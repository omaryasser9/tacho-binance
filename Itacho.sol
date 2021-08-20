// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

interface ITACHO {
    /**
     * this Returns the amount of tacho assets in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * this Returns the tacho asset decimals.
     */
    function decimals() external view returns (uint8);

    /**
     * this Returns the tacho asset symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * this Returns the tacho asset name.
     */
    function name() external view returns (string memory);

    /**
     * this Returns the tacho asset owner.
     */
    function getOwner() external view returns (address);

    /**
     * this Returns the amount of tacho assets owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * this Moves `amount` tacho assets from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * this Returns the remaining number of tacho assets that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address _owner, address spender) external view returns (uint256);

    /**
     * this Sets `amount` as the allowance of `spender` over the caller's tacho assets.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * this Moves `amount` tacho assets from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /**
     * this Emitted when `value` tacho assets are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * this Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}
