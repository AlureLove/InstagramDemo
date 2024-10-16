//
//  ProfileHeaderView.swift
//  InstagramTutorial
//
//  Created by JethroLiu on 2024/10/14.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            // pic and stats
            HStack {
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())

                Spacer()

                HStack(spacing: 8) {
                    UserStackView(value: 3, title: "Posts")

                    UserStackView(value: 12, title: "Followers")

                    UserStackView(value: 24, title: "Following")
                }
            }
            .padding(.horizontal)

            // name and bio
            VStack(alignment: .leading, spacing: 4) {
                Text(user.fullName ?? "")
                    .font(.footnote)
                    .fontWeight(.semibold)

                Text(user.bio ?? "")
                    .font(.footnote)
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)

            // action button

            Button {
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                    }
            }

            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
