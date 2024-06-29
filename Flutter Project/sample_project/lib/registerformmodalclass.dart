class ModelForm {
  String name;
  String address;
  String dob;
  String roll_no;

 ModelForm(this.name,this.address,this.dob,this.roll_no);
  factory ModelForm.fromJson(Map<String, dynamic> json) {
    return ModelForm(
      json['name'],
      json['address'],
      json['dob'],
      json['roll_no']
    );
  }  
   Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'dob': dob,
      'roll_no':roll_no
    };
  }

}