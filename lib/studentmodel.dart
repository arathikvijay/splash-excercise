class Studentmodel{
  String firstName;
  String secondName;
  String address;
  String mobileNumber;
  Studentmodel(this.firstName,this.secondName,this.address,this.mobileNumber);
  Map<String, dynamic> toJson(){
return{
  "firstname":firstName,
  "secondname":secondName,
  "address":address,
  "mobile":mobileNumber,
  
};
  }
  factory Studentmodel.fromJson(Map<String,dynamic>json)
  {
    return Studentmodel(
      json['firstname'],
      json['secondname'],
      json['address'],
      json['mobile'],


    );
      
  }
  
  
}