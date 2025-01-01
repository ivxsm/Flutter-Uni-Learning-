class Food {
    Food({
        required this.results,
        required this.offset,
        required this.number,
        required this.totalResults,
    });

    final List<Result> results;
    final int? offset;
    final int? number;
    final int? totalResults;

    factory Food.fromJson(Map<String, dynamic> json){ 
        return Food(
            results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
            offset: json["offset"],
            number: json["number"],
            totalResults: json["totalResults"],
        );
    }

}

class Result {
    Result({
        required this.id,
        required this.title,
        required this.image,
        required this.imageType,
        required this.nutrition,
    });

    final int? id;
    final String? title;
    final String? image;
    final String? imageType;
    final Nutrition? nutrition;

    factory Result.fromJson(Map<String, dynamic> json){ 
        return Result(
            id: json["id"],
            title: json["title"],
            image: json["image"],
            imageType: json["imageType"],
            nutrition: json["nutrition"] == null ? null : Nutrition.fromJson(json["nutrition"]),
        );
    }

}

class Nutrition {
    Nutrition({
        required this.nutrients,
    });

    final List<Nutrient> nutrients;

    factory Nutrition.fromJson(Map<String, dynamic> json){ 
        return Nutrition(
            nutrients: json["nutrients"] == null ? [] : List<Nutrient>.from(json["nutrients"]!.map((x) => Nutrient.fromJson(x))),
        );
    }

}

class Nutrient {
    Nutrient({
        required this.name,
        required this.amount,
        required this.unit,
    });

    final String? name;
    final double? amount;
    final String? unit;

    factory Nutrient.fromJson(Map<String, dynamic> json){ 
        return Nutrient(
            name: json["name"],
            amount: json["amount"],
            unit: json["unit"],
        );
    }

}
