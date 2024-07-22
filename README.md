Attack Simulation

Building Interaction:

Currently commented out but intended to demonstrate how an auxiliary contract (BuildingArg) could be used to manipulate or interact with HackMeIfYouCan.
Coin Flip Prediction:

Calculates a guess based on the last mined block's hash and a predefined FACTOR, attempting to predict the outcome of a coin flip defined in HackMeIfYouCan.
Uses this prediction to call the flip() function, demonstrating an exploit where block information is used to gain an advantage in contract interactions.
Password Extraction and Usage:

Utilizes Foundry's vm.load() to directly access contract storage, extracting a supposed password at a specific storage slot.
Submits this password using the sendPassword() function, showing how private data might be leaked or improperly protected within a contract.
Displaying Marks:

Retrieves and logs the marks associated with the attacker's address using getMarks(), showcasing how state changes are tracked within the contract based on interactions.


## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
