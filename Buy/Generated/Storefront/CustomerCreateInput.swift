// Generated from graphql_swift_gen gem
import Foundation

extension Storefront {
	open class CustomerCreateInput {
		open var clientMutationId: String?

		open var firstName: String?

		open var lastName: String?

		open var email: String

		open var password: String

		open var acceptsMarketing: Bool?

		public init(
			email: String,

			password: String,

			clientMutationId: String? = nil,

			firstName: String? = nil,

			lastName: String? = nil,

			acceptsMarketing: Bool? = nil
		) {
			self.clientMutationId = clientMutationId

			self.firstName = firstName

			self.lastName = lastName

			self.email = email

			self.password = password

			self.acceptsMarketing = acceptsMarketing
		}

		func serialize() -> String {
			var fields: [String] = []

			if let clientMutationId = clientMutationId {
				fields.append("clientMutationId:\(GraphQL.quoteString(input: clientMutationId))")
			}

			if let firstName = firstName {
				fields.append("firstName:\(GraphQL.quoteString(input: firstName))")
			}

			if let lastName = lastName {
				fields.append("lastName:\(GraphQL.quoteString(input: lastName))")
			}

			fields.append("email:\(GraphQL.quoteString(input: email))")

			fields.append("password:\(GraphQL.quoteString(input: password))")

			if let acceptsMarketing = acceptsMarketing {
				fields.append("acceptsMarketing:\(acceptsMarketing)")
			}

			return "{\(fields.joined(separator: ","))}"
		}
	}
}
