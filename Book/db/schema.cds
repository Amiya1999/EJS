namespace Bookshop;
// using { cuid } from '@sap/cds/common';
entity Sellers{
    key id:UUID;
    username:String;
    email:String;
    password:String;
}

// entity Buyers : cuid {
//     username: String;
//     email: String;
//     password: String;
// }

entity Buyers{
    key id: UUID;
    username:String;
    email:String;
    password:String;
}

entity Books{
    key id:UUID;
    imageurl:String(2555);
    bookname:String;
    price:Integer;
    quantity:Integer;
    seller:Association to Sellers;
}
entity Cart{
    key id:UUID;
    imageurl:String(2555);
    bookname:String;
    price:Integer; 
    quantity:Integer;
    book:Association to Bookshop.Books;
    buyer:Association to Bookshop.Buyers;
}
entity Oders{
    key id:UUID;
    book:Association to Books;
    user:Association to Buyers;
    quantity:Integer;
    cartvalue:Integer;
}