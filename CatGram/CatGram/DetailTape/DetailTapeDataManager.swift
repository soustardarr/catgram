////
////  DetailTapeDataManager.swift
////  CatGram
////
////  Created by Ruslan Kozlov on 29.11.2023.
////
//
//import Foundation
//import UIKit
//
//class DetailTapeDataManager: NSObject, UITableViewDataSource, UITableViewDelegate {
//
//    private var detailPublication: [DetailPublication] = []
//    private var filteredPosts: [DetailPublication] = []
//    private var publicationArray: [ProfilePublication] = []
//
//    private var profileDataManager = ProfileDataManager.shared
//
//    override init() {
//        super.init()
//        if publicationArray.isEmpty {
//            getPosts(profilemanager: profileDataManager)
//        }
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        550
//    }
//
//    private func getPosts(profilemanager: ProfileDataManager) {
//        profilemanager.asyncGetAllPosts { result in
//            switch result {
//            case .success(let publications):
//                for publication in publications {
//                    self.detailPublication.append(
//                        DetailPublication(
//                            id: publication.id,
//                            avatarImage: publication.userProfile.avatar,
//                            accountName: publication.userProfile.userName,
//                            postImage: publication.image,
//                            caption: publication.caption,
//                            date: publication.date,
//                            isLiked: publication.isLiked
//                        )
//                    )
//
//                }
//            case .failure(let error):
//                print("ошибка получения постов \(error)")
//            }
//        }
//    }
//}
