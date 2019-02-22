//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension PetstoreTest.Fake {

    /** Fake endpoint for testing various parameters
假端點
偽のエンドポイント
가짜 엔드 포인트
 */
    public enum TestEndpointParameters {

        public static let service = APIService<Response>(id: "testEndpointParameters", tag: "fake", method: "POST", path: "/fake", hasBody: true, isUpload: true, securityRequirement: SecurityRequirement(type: "http_basic_test", scopes: []))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** None */
                public var number: Double

                /** None */
                public var double: Double

                /** None */
                public var patternWithoutDelimiter: String

                /** None */
                public var byte: File

                /** None */
                public var binary: File?

                /** None */
                public var callback: String?

                /** None */
                public var date: DateDay?

                /** None */
                public var dateTime: DateTime?

                /** None */
                public var float: Float?

                /** None */
                public var int32: Int?

                /** None */
                public var int64: Int?

                /** None */
                public var integer: Int?

                /** None */
                public var password: String?

                /** None */
                public var string: String?

                public init(number: Double, double: Double, patternWithoutDelimiter: String, byte: File, binary: File? = nil, callback: String? = nil, date: DateDay? = nil, dateTime: DateTime? = nil, float: Float? = nil, int32: Int? = nil, int64: Int? = nil, integer: Int? = nil, password: String? = nil, string: String? = nil) {
                    self.number = number
                    self.double = double
                    self.patternWithoutDelimiter = patternWithoutDelimiter
                    self.byte = byte
                    self.binary = binary
                    self.callback = callback
                    self.date = date
                    self.dateTime = dateTime
                    self.float = float
                    self.int32 = int32
                    self.int64 = int64
                    self.integer = integer
                    self.password = password
                    self.string = string
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: TestEndpointParameters.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(number: Double, double: Double, patternWithoutDelimiter: String, byte: File, binary: File? = nil, callback: String? = nil, date: DateDay? = nil, dateTime: DateTime? = nil, float: Float? = nil, int32: Int? = nil, int64: Int? = nil, integer: Int? = nil, password: String? = nil, string: String? = nil) {
                let options = Options(number: number, double: double, patternWithoutDelimiter: patternWithoutDelimiter, byte: byte, binary: binary, callback: callback, date: date, dateTime: dateTime, float: float, int32: int32, int64: int64, integer: integer, password: password, string: string)
                self.init(options: options)
            }

            public override var formParameters: [String: Any] {
                var params: [String: Any] = [:]
                params["number"] = options.number
                params["double"] = options.double
                params["pattern_without_delimiter"] = options.patternWithoutDelimiter
                params["byte"] = options.byte.encode()
                if let binary = options.binary?.encode() {
                  params["binary"] = binary
                }
                if let callback = options.callback {
                  params["callback"] = callback
                }
                if let date = options.date?.encode() {
                  params["date"] = date
                }
                if let dateTime = options.dateTime?.encode() {
                  params["dateTime"] = dateTime
                }
                if let float = options.float {
                  params["float"] = float
                }
                if let int32 = options.int32 {
                  params["int32"] = int32
                }
                if let int64 = options.int64 {
                  params["int64"] = int64
                }
                if let integer = options.integer {
                  params["integer"] = integer
                }
                if let password = options.password {
                  params["password"] = password
                }
                if let string = options.string {
                  params["string"] = string
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Invalid username supplied */
            case status400

            /** User not found */
            case status404

            public var success: Void? {
                switch self {
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status400: return 400
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status400: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 400: self = .status400
                case 404: self = .status404
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
