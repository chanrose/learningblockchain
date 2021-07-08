name: public(Bytes[24])

@external
def __init__():
    self.name = b"Satoshi Nakamoto"

@external
def change_name(new_name: Bytes[24]):
    self.name = new_name

@external
def say_hello() -> Bytes[32]:
    return concat(b"Hello, ", self.name)
