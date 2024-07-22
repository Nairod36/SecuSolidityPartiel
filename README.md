Attack Simulation
Attack Details
Contract Instance:

Directly connects to a deployed instance of HackMeIfYouCan using its known address, bypassing the need for deployment within the script.
Building Attack:

Utilizes the BuildingArg contract to manipulate outcomes in the HackMeIfYouCan contract, specifically targeting the goTo function.
Predictive Flip:

Calculates and predicts outcomes of the flip function based on the last block hash, exploiting predictable randomness in the contract's logic.
Password Extraction and Use:

Extracts a password directly from the smart contract's storage using Foundry's vm.load feature, which allows reading from specific storage slots of a contract.
This password is then used to access or manipulate secure functions within HackMeIfYouCan.
Additional Exploits:

Demonstrates various other exploit strategies including:
Adding Points: Manipulates score or point-related functions.
Contributions: Small Ether contributions are made to test the contract's response to financial transactions.
Key Usage: Extracts and uses keys from contract storage for authorization within the contract.
Token Transfer: Tests the transfer function to manipulate token balances unlawfully.
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
