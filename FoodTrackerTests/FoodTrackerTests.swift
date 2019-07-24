import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    func testMealInitializationSucceeds() {
        
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0, memo: "")
        XCTAssertNotNil(zeroRatingMeal)

        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5, memo: "")
        XCTAssertNotNil(positiveRatingMeal)

    }
    
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1, memo: "")
        XCTAssertNil(negativeRatingMeal)
        
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6, memo: "")
        XCTAssertNil(largeRatingMeal)
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0, memo: "")
        XCTAssertNil(emptyStringMeal)
        
    }
}
