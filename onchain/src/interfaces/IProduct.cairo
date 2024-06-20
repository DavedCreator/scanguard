use starknet::{ContractAddress};
use scanguard::base::types::{ProductParams};

#[starknet::interface]
pub trait IProducts<TContractState> {
    fn verify(self: @TContractState, product_id: felt252) -> ProductParams;
    fn store_product(
        ref self: TContractState,
        product_id: felt252,
        ipfs_hash: ByteArray,
        ownable_contract_address: ContractAddress
    );
}
