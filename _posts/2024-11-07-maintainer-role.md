---
title: Maintainer Role
layout: post
author: Colby Swandale
author_email: me@colby.fyi
---

Today, we are excited to announce a new type of permission for users to have on gems. Until today, permissions on a gem were simply binary: either you were an `owner` on a gem, and you could do anything, or you were not an owner, and you could do nothing. In response to user requests, we have added a new option, the `maintainer` role.

### What can maintainers do?

Like owners, maintainers are able to publish new versions of a gem. Unlike owners, maintainers are not allowed to change gem permissions, which means they cannot add additional owners or maintainers to the gem, and they cannot add trusted publishers to make automated pushes.

|  | Owner | Maintainer |
| --- | --- | --- |
| Publish new versions | ✅ | ✅ |
| Configure OIDC & Trusted publishing | ✅ | ❌ |
| Add owners/maintainers | ✅ | ❌ |
| Manage gem adoptions | ✅ | ❌ |

### Why add this new role?

We’re adding the `maintainer` role primarily to improve security. As long as every user has `owner` permissions, gaining access any of those accounts is enough to fully take over a gem. Since not all users need the maximum permissions of an owner, the new role allows the defensive security strategy often called “minimal permissions”, where users are only given the permissions that they actually need to use, in order to reduce damage if an account is compromised.

The underlying system that creates multiple kinds of permissions on a gem will also serve as a building block for our ongoing work to add organization accounts to RubyGems in the future.

### What happens next?

For the time being, permissions will stay exactly the same. New permissions will default to `owner`, and users will need to manually opt in to giving someone `maintainer` permissions. Sometime in the next 2 or 3 months, once we have higher confidence in the code to handle the new roles, we will change the default for newly added users to `maintainer`, and users will have to manually choose the `owner` permission if they want to give it.