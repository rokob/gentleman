//  Copyright (c) 2014 rokob. All rights reserved.

import Foundation

struct Bet {
  enum Status: Int {
    case Pending = 0
    case Accepted, Locked, Finished
    case Dispute, Settled
  }

  enum Winner: Int {
    case Creator = 0
    case Opponent = 1
  }

  let id: String
  let creator_id: String
  let opponent_id: String
  let event: Event
  let status: Status
  let creator_claim: Winner?
  let opponent_claim: Winner?
  let winner_id: String?

//  static func fromJSON(dict: Dictionary<String, AnyObject!>) -> Bet {
//
//  }
}
