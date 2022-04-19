//
//  LocalData.swift
//  JarrodsMenuRev
//
//  Created by Jason Carter on 4/4/22.
//

import Foundation

struct LocalData {
    /// Use local data instead of remote server
    static let isLocal = true
    
    /// List of categories
    static let categories = [
        "Hot Beverages",
        "Iced Beverages",
        "Blended",
        "Smoothies",
        "Other Drinks",
        "Bakery Pastry",
        "Bulk",
        ]

    //Local json data for items
    static let menuItems = [
            MenuItem(
                            id: 11,
                            name: "House Coffee",
                            size1: "12 oz",
                            size2: "16 oz",
                            price1: 2.50,
                            price2: 3.00,
                            category: "Hot Beverages",
                        imageURL: URL(fileURLWithPath: "bags_of_coffee")
                        ),
           MenuItem(
                            id: 12,
                            name: "Americano",
                            size1: "12 oz",
                            size2: "16 oz",
                            price1: 3.25,
                            price2: 3.75,
                            category: "Hot Beverages",
                        imageURL: URL(fileURLWithPath: "latte")
                        ),
           MenuItem(
                            id: 13,
                            name: "Cappuccino",
                            size1: "12 oz",
                            size2: "16 oz",
                            price1: 3.50,
                            price2: 4.00,
                            category: "Hot Beverages",
                        imageURL: URL(fileURLWithPath: "cappuccino")
                        ),
           MenuItem(
                            id: 14,
                            name: "Latte",
                            size1: "12 oz",
                            size2: "16 oz",
                            price1: 3.50,
                            price2: 4.00,
                            category: "Hot Beverages",
                        imageURL: URL(fileURLWithPath: "latte")
                        ),
           MenuItem(
                            id: 15,
                            name: "Chai Latte",
                            size1: "12 oz",
                            size2: "16 oz",
                            price1: 3.75,
                            price2: 4.25,
                            category: "Hot Beverages",
                        imageURL: URL(fileURLWithPath: "bags_of_coffee")
                       ),
           MenuItem(
                            id: 16,
                            name: "Hot Tea",
                            size1: "12 oz",
                            size2: "16 oz",
                            price1: 2.50,
                            price2: 3.00,
                            category: "Hot Beverages",
                        imageURL: URL(fileURLWithPath: "latte")
                        ),
           MenuItem(
                            id: 17,
                            name: "Hot Cocoa",
                            size1: "12 oz",
                            size2: "16 oz",
                            price1: 2.50,
                            price2: 3.00,
                            category: "Hot Beverages",
                        imageURL: URL(fileURLWithPath: "bags_of_coffee")
                        ),
           MenuItem(
            id: 18,
                            name: "Mocha",
                            size1: "12 oz",
                            size2: "16 oz",
                            price1: 2.95,
                            price2: 3.45,
                            category: "Hot Beverages",
                        imageURL: URL(fileURLWithPath: "latte")
           ),
                            MenuItem(
                                id: 19,
                            name: "Espresso Shot",
                            size1: "Single",
                            size2: "Double",
                            price1: 2.50,
                            price2: 3.50,
                                category: "Hot Beverages",
                            imageURL: URL(fileURLWithPath: "bags_of_coffee")
                        ),
                            MenuItem(
                                id: 110,
                            name: "Caramel",
                            size1: "12 oz",
                            size2: "16 oz",
                            price1: 2.95,
                            price2: 3.45,
                                category: "Hot Beverages",
                            imageURL: URL(fileURLWithPath: "latte")
                        ),
                            MenuItem(
                                id: 111,
                            name: "Vanilla",
                                size1: "12 oz",
                                size2: "16 oz",
                                price1: 2.95,
                                price2: 3.45,
                                category: "Hot Beverages",
                            imageURL: URL(fileURLWithPath: "latte")
                        ),
                            MenuItem(
                                id: 112,
                                name: "Hot Chocolate",
                                size1: "12 oz",
                                size2: "16 oz",
                            price1: 2.25,
                            price2: 2.75,
                                category: "Hot Beverages",
                            imageURL: URL(fileURLWithPath: "latte")
                        ),
                            MenuItem(
                                id: 21,
                            name: "Iced Americano",
                            size1: "16 oz",
                            size2: "24 oz",
                            price1: 3.75,
                            price2: 4.25,
                                category: "Iced Beverages",
                            imageURL: URL(fileURLWithPath: "iced_americano")
                        ),
                            MenuItem(
                                id: 22,
                                name: "Iced Love a Latte",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 3.75,
                            price2: 4.25,
                                category: "Iced Beverages",
                            imageURL: URL(fileURLWithPath: "iced_love_a_latte")
                            ),
                            MenuItem(
                            id: 23,
                            name: "Iced Caramel Latte(Ghiradelli)",
                            size1: "16 oz",
                            size2: "24 oz",
                            price1: 4.00,
                            price2: 4.50,
                            category: "Iced Beverages",
                        imageURL: URL(fileURLWithPath: "iced_love_a_latte")
                            ),
                            MenuItem(
                                id: 24,
                                name: "Iced Mocha Latte(Ghiradelli)",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 3.50,
                            price2: 4.00,
                                category: "Iced Beverages",
                            imageURL: URL(fileURLWithPath: "iced_love_a_latte")
                            ),
                            MenuItem(
                                id: 25,
                                name: "Iced Vanilla Latte(Ghiradelli)",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 3.50,
                            price2: 4.00,
                                category: "Iced Beverages",
                            imageURL: URL(fileURLWithPath: "iced_chai_latte")
                            ),
                            MenuItem(
                                id: 26,
                                name: "Iced Chai Latte",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.00,
                            price2: 4.50,
                                category: "Iced Beverages",
                            imageURL: URL(fileURLWithPath: "iced_chai_latte")
                            ),
                            MenuItem(
                                id: 27,
                                name: "Lemonade",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 2.50,
                            price2: 3.25,
                                category: "Iced Beverages",
                            imageURL: URL(fileURLWithPath: "lemonade")
                            ),
                            MenuItem(
                                id: 28,
                                name: "Shaved Ice",
                            size1: "16 oz",
                                size2: "",
                            price1: 3.00,
                                price2: 0,
                                category: "Iced Beverages",
                            imageURL: URL(fileURLWithPath: "latte")
                            ),
                            MenuItem(
                                id: 29,
                                name: "Italian Soda",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 3.00,
                            price2: 3.50,
                                category: "Iced Beverages",
                            imageURL: URL(fileURLWithPath: "italian_soda")
                            ),
                            MenuItem(
                                id: 210,
                                name: "Iced Tea",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 2.50,
                                price2: 3.25,
                                category: "Iced Beverages",
                            imageURL: URL(fileURLWithPath: "iced_tea")
                                ),
                            MenuItem(
                                id: 31,
                                name: "Caramel Kick",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.95,
                            price2: 5.75,
                                category: "Blended",
                            imageURL: URL(fileURLWithPath: "blended_lattes")
                            ),
                            MenuItem(
                                id: 32,
                                name: "Cinnamon Bang",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.95,
                            price2: 5.75,
                                category: "Blended",
                            imageURL: URL(fileURLWithPath: "blended_lattes")
                            ),
                            MenuItem(
                                id: 33,
                                name: "Mocha My-day",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.95,
                                price2: 5.75,
                                category: "Blended",
                            imageURL: URL(fileURLWithPath: "blended_lattes")
                            ),
                            MenuItem(
                                id: 34,
                                name: "Vanilla Yum",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.95,
                            price2: 5.75,
                                category: "Blended",
                            imageURL: URL(fileURLWithPath: "blended_lattes")
                            ),
                            MenuItem(
                                id: 35,
                                name: "Hazelnut Fun",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.95,
                            price2: 5.75,
                                category: "Blended",
                            imageURL: URL(fileURLWithPath: "blended_lattes")
                        ),
                            MenuItem(
                                id: 36,
                                name: "Green Tea D’Lish",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.95,
                            price2: 5.75,
                                category: "Blended",
                            imageURL: URL(fileURLWithPath: "blended_lattes")
                            ),
                            MenuItem(
                                id: 37,
                                name: "Chai Oh-Yea",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.95,
                            price2: 5.75,
                                category: "Blended",
                            imageURL: URL(fileURLWithPath: "blended_lattes")
                            ),
                            MenuItem(
                                id: 38,
                                name: "Peanutbutter Mocha Blast",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.95,
                            price2: 5.75,
                                category: "Blended",
                            imageURL: URL(fileURLWithPath: "blended_lattes")
                            ),
                            MenuItem(
                                id: 41,
                                name: "Straw Bangin Berry",
                                size1: "16 oz",
                                size2: "24 oz",
                            price1: 4.95,
                            price2: 5.75,
                                category: "Smoothies",
                            imageURL: URL(fileURLWithPath: "smoothies")
                            ),
                            MenuItem(
                            id: 42,
                            name: "Pina Lota Colada",
                            size1: "16 oz",
                            size2: "24 oz",
                            price1: 4.75,
                            price2: 5.50,
                            category: "Smoothies",
                        imageURL: URL(fileURLWithPath: "smoothies")
                            ),
                            MenuItem(
                            id: 43,
                            name: "Blueberry Pomegranate Explosion",
                            size1: "16 oz",
                            size2: "24 oz",
                            price1: 4.75,
                            price2: 5.50,
                            category: "Smoothies",
                        imageURL: URL(fileURLWithPath: "smoothies")
                            ),
                            MenuItem(
                                id: 44,
                                name: "Mango Madness",
                                size1: "16 oz",
                                size2: "24 oz",
                                price1: 4.75,
                                price2: 5.50,
                                category: "Smoothies",
                            imageURL: URL(fileURLWithPath: "smoothies")
                            ),
                            MenuItem(
                                id: 45,
                                name: "Banana Rama",
                                size1: "16 oz",
                                size2: "24 oz",
                                price1: 4.75,
                                price2: 5.50,
                                category: "Smoothies",
                            imageURL: URL(fileURLWithPath: "smoothies")
                            ),
                            MenuItem(
                                id: 51,
                                name: "Black and Blue Iced Tea",
                            size1: "16 oz",
                            size2: "24 oz",
                            //size3: "32 oz",
                            price1: 2.75,
                            price2: 3.50,
                           // price3: 4.50,
                                category: "Other Drinks",
                            imageURL: URL(fileURLWithPath: "black_and_blue_iced_tea")
                            ),
                            MenuItem(
                                id: 52,
                                name: "Fresh Brewed Iced Tea",
                            size1: "16 oz",
                            size2: "24 oz",
                            price1: 1.75,
                            price2: 2.00,
                                category: "Other Drinks",
                            imageURL: URL(fileURLWithPath: "fresh_brewed_iced_tea")
                            ),
                            MenuItem(
                                id: 53,
                                name: "Arnold Palmer",
                            size1: "16 oz",
                            size2: "24 oz",
                           // size3: "32 oz",
                            price1: 3.00,
                            price2: 3.50,
                            //price3: 4.50,
                                category: "Other Drinks",
                            imageURL: URL(fileURLWithPath: "iced_arnold_palmer")
                            ),
                            MenuItem(
                                id: 54,
                                name: "Lightning Lemonade",
                            size1: "16 oz",
                                size2: "24 oz",
                            price1: 2.50,
                            price2: 3.25,
                                category: "Other Drinks",
                            imageURL: URL(fileURLWithPath: "lightning_lemonade")
                            ),
                            MenuItem(
                                id: 55,
                                name: "Italian Soda",
                            size1: "16 oz",
                            size2: "24 oz",
                                price1: 3.00,
                            price2: 3.50,
                                category: "Other Drinks",
                            imageURL: URL(fileURLWithPath: "italian_soda")
                                ),
                            MenuItem(
                                id: 61,
                                name: "Bagels with Cream Cheese",
                                size1: "",
                                size2: "",
                                price1: 2.25,
                                price2: 2.25,
                                category: "Bakery Pastry",
                            imageURL: URL(fileURLWithPath: "bagel_with_cream_cheese")
                            ),
                            MenuItem(
                                id: 62,
                                name: "Banana Nut Muffin",
                                size1: "",
                                size2: "",
                                price1: 4.95,
                                price2: 4.95,
                                category: "Bakery Pastry",
                            imageURL: URL(fileURLWithPath: "banana_nut_muffin")
                            ),
                            MenuItem(
                                id: 63,
                                name: "Lemon Olive Oil Loaf",
                                size1: "",
                                size2: "",
                                price1: 4.95,
                                price2: 4.95,
                                category: "Bakery Pastry",
                            imageURL: URL(fileURLWithPath: "lemon_olive_oil_loaf")
                            ),
                            MenuItem(
                                id: 64,
                                name: "Coffee Cake",
                                size1: "",
                                size2: "",
                                price1: 4.95,
                                price2: 4.95,
                                category: "Bakery Pastry",
                            imageURL: URL(fileURLWithPath: "coffee_cake")
                            ),
                            MenuItem(
                                id: 65,
                                name: "Cinnamon Roll",
                                size1: "",
                                size2: "",
                                price1: 4.95,
                                price2: 4.95,
                                category: "Bakery Pastry",
                            imageURL: URL(fileURLWithPath: "cinnamon_roll")
                            ),
                            MenuItem(
                                id: 66,
                                name: "Raspberry Chocolate Loaf",
                                size1: "",
                                size2: "",
                                price1: 4.95,
                                price2: 4.95,
                                category: "Bakery Pastry",
                            imageURL: URL(fileURLWithPath: "raspberry_chocolate_loaf")
                            ),
                            MenuItem(
                                id: 67,
                                name: "Blueberry Scone",
                                size1: "",
                                size2: "",
                                price1: 4.95,
                                price2: 4.95,
                                category: "Bakery Pastry",
                            imageURL: URL(fileURLWithPath: "blueberry_scone")
                            ),
                            MenuItem(
                                id: 68,
                                name: "Lemon Raspberry Scone",
                                size1: "",
                                size2: "",
                                price1: 4.95,
                                price2: 4.95,
                                category: "Bakery Pastry",
                            imageURL: URL(fileURLWithPath: "lemon_raspberry_scone")
                                ),
                            MenuItem(
                                id: 71,
                            name: "Lemon Strawberry Tea",
                                size1: "Bulk",
                                size2: "",
                                price1: 12.95,
                                price2: 12.95,
                                category: "Bulk",
                            imageURL: URL(fileURLWithPath: "lemon_strawberry_tea")
                            ),
                            MenuItem(
                            id: 72,
                            name: "Jarrods Coffe Beans",
                            size1: "Bulk",
                            size2: "",
                            price1: 12.95,
                            price2: 12.95,
                            category: "Bulk",
                        imageURL: URL(fileURLWithPath: "jarrods_coffee_beans")
                            ),
            ]
}
//list of addons to be added to order/itemdetailcontrollerview later
    //static let addOnItems = [
    // MenuItem(
    //        id: 81,
    // name: "Espresso Shot",
    //   price1: 0.75
    //              ),
    //         MenuItem(
    //                id: 82,
    //          name: "Almond Milk",
    //                price1: 0.75
    //             ),
    //            MenuItem(
    //                id: 83,
    //                 name: "Soy Milk",
    //            price1: 0.75
    //         ),
    //      MenuItem(
    //          id: 84,
    //            name: "Coconut Milk",
    //             price1: 0.75
    //         ),
    //        MenuItem(
    //            id: 85,
    //          name: "Whey Protein",
    //       price1: 0.75
    //       ),
    //        MenuItem(
    //            id: 89,
    //        name: "Soy Protein",
    //         price1: 0.75
    //     ),
    //         ]
    //          }


