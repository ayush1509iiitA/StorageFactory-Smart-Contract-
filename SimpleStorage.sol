// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;   
// ^0.8.7(above 0.8.7)   or
// 0.8.7(specific version)  or
// >=0.8.7 <0.8.9 (range)
contract SimpleStorage {
    //. Datatypes : boolean , uint , int , adress , string , bytes
    uint256 public FavNum;
    function store(uint256 _FavNum) public virtual  {
        FavNum = _FavNum;
    }
    // Visibility specifiers : public , private , internal , extrenal
    function retrieve() public view returns(uint256){
        return FavNum;
    }
    // view & pure keywords
    struct People {
        uint256 FavNum;
        string Name;
    }
    People public Pearson1 = People({FavNum:24,Name:'Ansh'});

    People[] public peoplearray;   // just like uint256[] public arr1


    // function addperson (string memory _Name , uint256 _FavNum) public {
    //     peoplearray.push(People(_FavNum, _Name));
        
    // }


    // memory , Storage , calldata keywords
    mapping (string=> uint256) public nameToFavNum;
     function addperson (string memory _Name , uint256 _FavNum) public {
        peoplearray.push(People(_FavNum, _Name));
        nameToFavNum[_Name]=_FavNum;   
    }
    

    

}
