//
//  Temp.swift
//  sample
//
//  Created by Sahib Hussain on 16/04/25.
//

import SwiftUI

struct TempView: View {
    var body: some View {
        VStack {
            
            ScrollView {
                
                LazyVStack(spacing: 8) {
                    HStack {
                        Image(.sample)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        VStack {
                            Text("Hello, World!")
                                .font(.system(size: 16, weight: .semibold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Hello, World!")
                                .font(.system(size: 14, weight: .medium))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("---")
                                .font(.system(size: 14, weight: .medium))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Image(systemName: "pencil")
                            .frame(width: 35)
                            .frame(maxHeight: .infinity)
                            .contentShape(Rectangle())
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(Color.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 16)
                    
                    VStack {
                        Text("Platform")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 12)
                    
                    VStack(spacing: 12) {
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "square.and.arrow.up")
                                    .frame(width: 35, height: 35)
                                Text("Share this app")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Color.gray.opacity(0.2).frame(height: 1)
                        }
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "heart")
                                    .frame(width: 35, height: 35)
                                Text("Rate this app")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Color.gray.opacity(0.2).frame(height: 1)
                        }
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "heart")
                                    .frame(width: 35, height: 35)
                                Text("Join our Discord Server")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Color.gray.opacity(0.2).frame(height: 1)
                        }
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "arrow.trianglehead.2.clockwise")
                                    .frame(width: 35, height: 35)
                                Text("Check for updates")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(Color.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 16)
                    
                    VStack {
                        Text("Legals")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 12)
                    
                    VStack(spacing: 12) {
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "filemenu.and.selection")
                                    .frame(width: 35, height: 35)
                                Text("Privacy Policy")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Color.gray.opacity(0.2).frame(height: 1)
                        }
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "filemenu.and.selection")
                                    .frame(width: 35, height: 35)
                                Text("Privacy Policy")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Color.gray.opacity(0.2).frame(height: 1)
                        }
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "filemenu.and.selection")
                                    .frame(width: 35, height: 35)
                                Text("Privacy Policy")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(Color.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 16)
                    
                    VStack {
                        Text("Account")
                            .font(.system(size: 16, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 12)
                    
                    VStack(spacing: 12) {
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "pencil")
                                    .frame(width: 35, height: 35)
                                Text("Edit Profile")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Color.gray.opacity(0.2).frame(height: 1)
                        }
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "trash")
                                    .frame(width: 35, height: 35)
                                Text("Delete Account")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Color.gray.opacity(0.2).frame(height: 1)
                        }
                        
                        VStack {
                            HStack(spacing: 4) {
                                Image(systemName: "rectangle.portrait.and.arrow.forward")
                                    .frame(width: 35, height: 35)
                                Text("Logout")
                                    .font(.system(size: 14, weight: .semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(Color.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 16)
                    
                    VStack(spacing: 12) {
                        
                        HStack {
                            
                            VStack {
                                Image(.sample)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 120)
                                    .clipped()
                            }
                            .frame(maxWidth: .infinity)
                            
                            Text("X")
                                .font(.system(size: 12, weight: .bold))
                            
                            VStack {
                                Image(.sample)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 120)
                                    .clipped()
                            }
                            .frame(maxWidth: .infinity)
                            
                        }
                        
                        Text("0.1.0 (123)")
                            .font(.system(size: 12, weight: .light))
                            .foregroundStyle(.secondary)
                            .frame(maxWidth: .infinity)
                        
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .padding(.top, 12)
                }
                
            }
            
        }
    }
}

#Preview {
    TempView()
}
