// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";
//importing & interacting with other contracts
contract Storagefactory {
    SimpleStorage[] public simplestoragearray;
    function CreateSimpleStorageContract() public{
        SimpleStorage simplestorage1 = new SimpleStorage();
        simplestoragearray.push(simplestorage1);
    }
    // ss-> simplestorage , sf -> storage factory
    function sfstore (uint256 _ssindex, uint256 _ssfavnum)public{
        SimpleStorage ss = SimpleStorage(simplestoragearray[_ssindex]);
        ss.store(_ssfavnum);
    }
    function sfget (uint256 _ssindex) public view returns(uint256){
        return simplestoragearray[_ssindex].retrieve();
       // or    SimpleStorage ss = SimpleStorage(simplestoragearray[_ssindex]);
        // return ss.retrieve();
         


    }
}
