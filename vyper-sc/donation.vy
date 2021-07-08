struct DonorDetail:
    amount: uint256
    name: Bytes[100]
    time: uint256
donors_details: public(HashMap[address, DonorDetail])
donors: public(address[10])
donatee: public(address)
index: int128

@external
def __init__():
    self.donatee = msg.sender

@payable
@external
def donate(name: Bytes[100]):
    assert msg.value >= as_wei_value(1, "ether")
    assert self.index < 10
    self.donors_details[msg.sender] = DonorDetail({
                                         amount: msg.value,
                                         name: name,
                                         time: block.timestamp
                                       })
    self.donors[self.index] = msg.sender
    self.index += 1
@external
def withdraw_donation():
    assert msg.sender == self.donatee
    send(self.donatee, self.balance)
