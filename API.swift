//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetIndoorQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition =
    """
    query getIndoor {
      getIndoorGames
    }
    """

  public let operationName = "getIndoor"

  public let operationIdentifier: String? = "0b7c698464c038c42f773a100b9ecad6535095f4493e514571350c329396d807"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getIndoorGames", type: .list(.scalar(String.self))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getIndoorGames: [String?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getIndoorGames": getIndoorGames])
    }

    public var getIndoorGames: [String?]? {
      get {
        return resultMap["getIndoorGames"] as? [String?]
      }
      set {
        resultMap.updateValue(newValue, forKey: "getIndoorGames")
      }
    }
  }
}

public final class GetOutdoorQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition =
    """
    query getOutdoor {
      getOutdoorGames
    }
    """

  public let operationName = "getOutdoor"

  public let operationIdentifier: String? = "568744576367aa2481c6f32f3bd42532ee173741000316a4ab4d1a704b79eb5b"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getOutdoorGames", type: .list(.scalar(String.self))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getOutdoorGames: [String?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getOutdoorGames": getOutdoorGames])
    }

    public var getOutdoorGames: [String?]? {
      get {
        return resultMap["getOutdoorGames"] as? [String?]
      }
      set {
        resultMap.updateValue(newValue, forKey: "getOutdoorGames")
      }
    }
  }
}

public final class FetchAllStudentsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition =
    """
    query fetchAllStudents {
      getAllStudents {
        __typename
        id
        name
        sex
        age
        tutor {
          __typename
          id
          name
          sex
          qualification
        }
        games
      }
    }
    """

  public let operationName = "fetchAllStudents"

  public let operationIdentifier: String? = "aee638c5cbf2121b20d82d04f89c3653d16e10f39867790655995d5feec91ad6"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getAllStudents", type: .list(.object(GetAllStudent.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getAllStudents: [GetAllStudent?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getAllStudents": getAllStudents.flatMap { (value: [GetAllStudent?]) -> [ResultMap?] in value.map { (value: GetAllStudent?) -> ResultMap? in value.flatMap { (value: GetAllStudent) -> ResultMap in value.resultMap } } }])
    }

    public var getAllStudents: [GetAllStudent?]? {
      get {
        return (resultMap["getAllStudents"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GetAllStudent?] in value.map { (value: ResultMap?) -> GetAllStudent? in value.flatMap { (value: ResultMap) -> GetAllStudent in GetAllStudent(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [GetAllStudent?]) -> [ResultMap?] in value.map { (value: GetAllStudent?) -> ResultMap? in value.flatMap { (value: GetAllStudent) -> ResultMap in value.resultMap } } }, forKey: "getAllStudents")
      }
    }

    public struct GetAllStudent: GraphQLSelectionSet {
      public static let possibleTypes = ["Student"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("sex", type: .scalar(String.self)),
        GraphQLField("age", type: .scalar(Int.self)),
        GraphQLField("tutor", type: .object(Tutor.selections)),
        GraphQLField("games", type: .list(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String? = nil, sex: String? = nil, age: Int? = nil, tutor: Tutor? = nil, games: [String?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Student", "id": id, "name": name, "sex": sex, "age": age, "tutor": tutor.flatMap { (value: Tutor) -> ResultMap in value.resultMap }, "games": games])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var sex: String? {
        get {
          return resultMap["sex"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sex")
        }
      }

      public var age: Int? {
        get {
          return resultMap["age"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "age")
        }
      }

      public var tutor: Tutor? {
        get {
          return (resultMap["tutor"] as? ResultMap).flatMap { Tutor(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "tutor")
        }
      }

      public var games: [String?]? {
        get {
          return resultMap["games"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "games")
        }
      }

      public struct Tutor: GraphQLSelectionSet {
        public static let possibleTypes = ["Tutor"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("sex", type: .scalar(String.self)),
          GraphQLField("qualification", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, name: String? = nil, sex: String? = nil, qualification: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Tutor", "id": id, "name": name, "sex": sex, "qualification": qualification])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var sex: String? {
          get {
            return resultMap["sex"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "sex")
          }
        }

        public var qualification: String? {
          get {
            return resultMap["qualification"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "qualification")
          }
        }
      }
    }
  }
}

public final class StudentByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition =
    """
    query studentById($id: Int!) {
      getStudentById(id: $id) {
        __typename
        id
        name
        sex
        age
        tutor {
          __typename
          id
          name
          sex
          qualification
        }
        games
      }
    }
    """

  public let operationName = "studentById"

  public let operationIdentifier: String? = "8e8f76187a83d61851a34c2654fb4b5832c8997cbe0dd6902cd9c2cd023a3a00"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getStudentById", arguments: ["id": GraphQLVariable("id")], type: .object(GetStudentById.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getStudentById: GetStudentById? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getStudentById": getStudentById.flatMap { (value: GetStudentById) -> ResultMap in value.resultMap }])
    }

    public var getStudentById: GetStudentById? {
      get {
        return (resultMap["getStudentById"] as? ResultMap).flatMap { GetStudentById(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getStudentById")
      }
    }

    public struct GetStudentById: GraphQLSelectionSet {
      public static let possibleTypes = ["Student"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("sex", type: .scalar(String.self)),
        GraphQLField("age", type: .scalar(Int.self)),
        GraphQLField("tutor", type: .object(Tutor.selections)),
        GraphQLField("games", type: .list(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String? = nil, sex: String? = nil, age: Int? = nil, tutor: Tutor? = nil, games: [String?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Student", "id": id, "name": name, "sex": sex, "age": age, "tutor": tutor.flatMap { (value: Tutor) -> ResultMap in value.resultMap }, "games": games])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var sex: String? {
        get {
          return resultMap["sex"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sex")
        }
      }

      public var age: Int? {
        get {
          return resultMap["age"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "age")
        }
      }

      public var tutor: Tutor? {
        get {
          return (resultMap["tutor"] as? ResultMap).flatMap { Tutor(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "tutor")
        }
      }

      public var games: [String?]? {
        get {
          return resultMap["games"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "games")
        }
      }

      public struct Tutor: GraphQLSelectionSet {
        public static let possibleTypes = ["Tutor"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("sex", type: .scalar(String.self)),
          GraphQLField("qualification", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, name: String? = nil, sex: String? = nil, qualification: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Tutor", "id": id, "name": name, "sex": sex, "qualification": qualification])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var sex: String? {
          get {
            return resultMap["sex"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "sex")
          }
        }

        public var qualification: String? {
          get {
            return resultMap["qualification"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "qualification")
          }
        }
      }
    }
  }
}

public final class FetchAllTutorsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition =
    """
    query fetchAllTutors {
      getTutors {
        __typename
        name
        id
        sex
        qualification
      }
    }
    """

  public let operationName = "fetchAllTutors"

  public let operationIdentifier: String? = "c0200c51bd920572ccc848665365b0c3d09a312b7fa0333c4d9630fcb0771c7a"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTutors", type: .list(.object(GetTutor.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getTutors: [GetTutor?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getTutors": getTutors.flatMap { (value: [GetTutor?]) -> [ResultMap?] in value.map { (value: GetTutor?) -> ResultMap? in value.flatMap { (value: GetTutor) -> ResultMap in value.resultMap } } }])
    }

    public var getTutors: [GetTutor?]? {
      get {
        return (resultMap["getTutors"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GetTutor?] in value.map { (value: ResultMap?) -> GetTutor? in value.flatMap { (value: ResultMap) -> GetTutor in GetTutor(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [GetTutor?]) -> [ResultMap?] in value.map { (value: GetTutor?) -> ResultMap? in value.flatMap { (value: GetTutor) -> ResultMap in value.resultMap } } }, forKey: "getTutors")
      }
    }

    public struct GetTutor: GraphQLSelectionSet {
      public static let possibleTypes = ["Tutor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("sex", type: .scalar(String.self)),
        GraphQLField("qualification", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, id: Int, sex: String? = nil, qualification: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Tutor", "name": name, "id": id, "sex": sex, "qualification": qualification])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var sex: String? {
        get {
          return resultMap["sex"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sex")
        }
      }

      public var qualification: String? {
        get {
          return resultMap["qualification"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "qualification")
        }
      }
    }
  }
}

public final class AddTutorMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition =
    """
    mutation addTutor($id: Int, $name: String, $sex: String, $qualification: String) {
      addTutor(id: $id, name: $name, sex: $sex, qualification: $qualification) {
        __typename
        id
        name
        sex
        qualification
      }
    }
    """

  public let operationName = "addTutor"

  public let operationIdentifier: String? = "ec2547a95712a26b47d585c9ff5fe6caa35d3b0e2549e08936d519b770bbfde1"

  public var id: Int?
  public var name: String?
  public var sex: String?
  public var qualification: String?

  public init(id: Int? = nil, name: String? = nil, sex: String? = nil, qualification: String? = nil) {
    self.id = id
    self.name = name
    self.sex = sex
    self.qualification = qualification
  }

  public var variables: GraphQLMap? {
    return ["id": id, "name": name, "sex": sex, "qualification": qualification]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addTutor", arguments: ["id": GraphQLVariable("id"), "name": GraphQLVariable("name"), "sex": GraphQLVariable("sex"), "qualification": GraphQLVariable("qualification")], type: .list(.object(AddTutor.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addTutor: [AddTutor?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addTutor": addTutor.flatMap { (value: [AddTutor?]) -> [ResultMap?] in value.map { (value: AddTutor?) -> ResultMap? in value.flatMap { (value: AddTutor) -> ResultMap in value.resultMap } } }])
    }

    public var addTutor: [AddTutor?]? {
      get {
        return (resultMap["addTutor"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AddTutor?] in value.map { (value: ResultMap?) -> AddTutor? in value.flatMap { (value: ResultMap) -> AddTutor in AddTutor(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [AddTutor?]) -> [ResultMap?] in value.map { (value: AddTutor?) -> ResultMap? in value.flatMap { (value: AddTutor) -> ResultMap in value.resultMap } } }, forKey: "addTutor")
      }
    }

    public struct AddTutor: GraphQLSelectionSet {
      public static let possibleTypes = ["Tutor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("sex", type: .scalar(String.self)),
        GraphQLField("qualification", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String? = nil, sex: String? = nil, qualification: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Tutor", "id": id, "name": name, "sex": sex, "qualification": qualification])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var sex: String? {
        get {
          return resultMap["sex"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sex")
        }
      }

      public var qualification: String? {
        get {
          return resultMap["qualification"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "qualification")
        }
      }
    }
  }
}

public final class TutorByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition =
    """
    query tutorById($tutorId: Int!) {
      getTutorById(id: $tutorId) {
        __typename
        name
      }
    }
    """

  public let operationName = "tutorById"

  public let operationIdentifier: String? = "e7aae483238af0de5d0efa5e08a47ae4121720f7dcc69dfc22a43c8449e6aeb0"

  public var tutorId: Int

  public init(tutorId: Int) {
    self.tutorId = tutorId
  }

  public var variables: GraphQLMap? {
    return ["tutorId": tutorId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTutorById", arguments: ["id": GraphQLVariable("tutorId")], type: .object(GetTutorById.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getTutorById: GetTutorById? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getTutorById": getTutorById.flatMap { (value: GetTutorById) -> ResultMap in value.resultMap }])
    }

    public var getTutorById: GetTutorById? {
      get {
        return (resultMap["getTutorById"] as? ResultMap).flatMap { GetTutorById(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getTutorById")
      }
    }

    public struct GetTutorById: GraphQLSelectionSet {
      public static let possibleTypes = ["Tutor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Tutor", "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}
