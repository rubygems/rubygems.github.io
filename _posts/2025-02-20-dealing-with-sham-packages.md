---
title: Dealing with (Hypothetical) Sham Packages
layout: post
author: Samuel Giddins
author_email: segiddins@segiddins.me
---

Please pardon a blog post that is a bit different from the standard RubyGems release announcement.

Today, I’m going to spin you a tale about the impact malicious software packages have on application developers.  

---

I want you to close your eyes, take a deep breath, and imagine the following (completely hypothetical, with *absolutely* no resemblance to real life) scenario.

Your company ships a web application written in your favorite language, Sham. Doing your best to stay productive and avoid re-implementing wheels of various shapes and sizes, you use packages for Sham, which, of course, are called Swindles. Your company is responsible, and uses all the fancy tooling to manage your Swindles, including a dependency manager that outputs lockfiles, Dependabot to automate version upgrades, and a code review process before anything makes its way into trunk.

If that describes you, congratulations—your application is already in the top 10% in terms of security preparedness. And now you think you’re ready to handle any sort of supply chain attack the world might send your way because you’re following the technical best practices that the Sham ecosystem has been bugging you to adopt for the past decade.

Now, unbeknownst to you, a Swindle that you, and probably hundreds of thousands of other Sham shops, depend upon has published a new release. And, of course, since this is a blog about software security, that release is *malicious*.

This is where a lot of fancy security advice blog posts stop. So often, we focus only on *preventing* this situation from occurring in the first place. But the reality is that bad actors are *always* going to be able to slip a bad package into the "software supply chain" (aka GitHub & package repositories), and it's important to account for that inevitability.

So, we have a bad package that has made its way into the main Swindle repository—but what happens next? Forget about how **I** might respond as the Swindle ecosystem security lead. Maybe I'm on vacation (that sure sounds nice). How do **you**, an engineer shipping an important Sham app to production, respond? How do you even know that you *need* to respond?

But one last diversion before we tackle those big questions, just to raise the stakes and make you go "oh no" a little bit more—as I mentioned, you've already done a great job adopting best practices for your app. You automated dependency updates. Can you see where this is going? An innocuous-looking Dependabot PR comes in, the linked release notes say a minor bug is fixed, and you hit merge after all your tests pass.

*Take a minute to let that nightmare sink in.* We can skip over all the different types of bad you just inflicted on your development and production environments—secret exfiltration, data breach, remote code execution, persistent backdoors, bitcoin miners… the list is practically endless.

But life goes on, even after committing a vulnerability to your repository. Heck, at this point, you still don't even know something bad happened\! How are you even going to find out about it? If you're lucky, someone else will figure out that the package is malicious. Maybe it slowed down an overly ambitious engineer’s laptop, so they dug into the updated code. Maybe it tripped some alarms in an automated code scanner that evaluates every new Swindle pushed to the registry. If so, hopefully that good Samaritan sounded the alarm in the *correct* way (responsible disclosure is a topic for a separate blog post). 

If your company is important enough, you probably got a heads-up directly from the source—either the person who found the vulnerability or a legitimate maintainer of the compromised Swindle. For everyone else, you have to hope that a [CVE](https://www.cve.org) is filed, accurately summarizing the vulnerability and affected package versions. Once a CVE is assigned, you might get a deluge of automated alerts—GitHub saying you depend upon a vulnerable Swindle version, an endpoint detection system saying a vulnerable version was found running in production, or an alert when installing from your `Swindlefile`. If that chain of notifications doesn’t happen, your best hope is that between the Sham language subreddit, security mailing list, and all the celebrity Shammers you follow on social, you hear about the big news *somehow*.

Once notified, you’ll determine if and how the vulnerability affects your application. If it targets a system that you simply don’t use, you got off easy. If not, you’ll grab a colleague and split up the two important parts of incident response: figuring out how the bad Swindle affects you and getting the vulnerable package off your premises. Time to [revert and](https://outage.party/) roll back the dependency upgrade and continue monitoring systems to see just how severe this malicious Swindle really was.

Now that you’ve resolved the incident, closed the VULN ticket, and gotten a good night’s rest, it’s time to clean up the mess that Swindle made. If you’re adventurous and happy to go down a good rabbit hole (like yours truly), you’ll probably analyze the malicious Swindle to understand what made it malicious. You know, the fun part of security work. Depending on the sort of vulnerability that was introduced, you might let users know their data was maybe, potentially (lawyers can’t say whether it was or wasn't) at risk. Finally, you’ll review logs to ensure nothing untoward actually happened, and 99.9% of the time, after rotating secrets and ticking all the boxes, you’ll get to move on,get back to building your great Sham application and forget about the Swindle that cost you your Saturday.

---

Thank you for playing along with our hypothetical ecosystem of Sham and Swindles. While this scenario was entirely fictional, it is based upon countless incidents I've observed over the past few years. If you’d like to read a less fictional account of an ecosystem responding to a compromised package (from the package repository perspective), I can recommend my friends over at PyPi’s write-ups of the [ultralytics attack](https://blog.pypi.org/posts/2024-12-11-ultralytics-attack-analysis/) and [how it could've been prevented](https://blog.yossarian.net/2024/12/06/zizmor-ultralytics-injection).
