---
title: RubyGems.org Completes First Security Audit With Trail of Bits
layout: post
author: Rhiannon Payne
author_email: rhiannon@rubycentral.org
---

At Ruby Central, ensuring the security of RubyGems.org—the central hub for Ruby packages—is one of our top priorities. With over 184 billion downloads, RubyGems.org is crucial to the Ruby ecosystem, supporting developers, businesses, and open source projects worldwide. 

To strengthen this critical infrastructure, we recently collaborated with [Trail of Bits](https://www.trailofbits.com/) on our first security audit of RubyGems.org.

Trail of Bits is a leading cybersecurity firm that helps organizations identify vulnerabilities, enhance defenses, and implement security best practices. 

The audit was funded through a grant from the Alpha-Omega Project, a consortium backed by Microsoft, Google, and Amazon, dedicated to improving the security of open source projects.

# Key findings from Trail of Bits

**Our audit with Trail of Bits focused on:**

1. The RubyGems.org Ruby on Rails application.
2. The infrastructure and configuration hosting the site and gems.

These areas were chosen because they represent the highest potential for security risks.

Trail of Bits leveraged advanced tools like Semgrep for static analysis, Burp Suite Professional for dynamic testing, and Ruzzy for fuzzing critical components, ensuring a thorough and multi-layered audit. 

The audit identified 33 issues, including seven medium-severity items and one high-severity item. **Notably, most of these findings do not constitute actual security breaches. Our team has been addressing each finding and using these insights to bolster RubyGems.org’s security posture.**

## RubyGems.org Rails app

Trail of Bits reviewed the Rails application code extensively and found that, in general, the site is built securely. Many of the issues highlighted were minor adjustments, often related to default Rails configurations that could be made more secure.

For example, one notable finding involved a vulnerability in the email system, where fallback to unencrypted transmission could expose sensitive emails. The recommended fix was straightforward—replace enable_starttls_auto with enable_starttls to enforce strict TLS encryption.

**Overall, the audit gave us confidence in the security of the RubyGems.org app, along with actionable recommendations for further strengthening it.**

## RubyGems.org infrastructure

On the infrastructure side, the audit revealed areas where RubyGems.org could align more closely with industry best practices, particularly regarding AWS configuration and access control. **While no immediate threats were identified, the findings emphasized the importance of proactive improvements.**

**Findings included:**

- Overly permissive AWS IAM permissions.
- Insufficient role separation and domain isolation.
- A hybrid infrastructure management approach, mixing manual changes with infrastructure-as-code.

These gaps could create vulnerabilities if left unaddressed, but Trail of Bits provided specific recommendations for us to mitigate risks. For example, they highlighted the need for better isolation between AWS accounts and more granular access control policies. These findings have already informed a project proposal we’re developing to modernize our infrastructure and automate resource management through tools like Terraform.

One of the most valuable outcomes on the infrastructure side was the clarity it brought in helping us better prioritize our efforts next year. Our team now has a roadmap for what improvements we need to make, how to implement them, and the expected impact on security.

# Next steps for RubyGems.org security

**We are using the audit’s findings to shape the next steps for security updates on RubyGems.org:**

- **Short-term:** We’ve already implemented many small, immediate improvements, such as stricter TLS enforcement and better access controls.
- **Longer-term:** We are working to secure funding to bring in a DevOps expert on a fixed-term contract to help modernize our infrastructure. This specialist will help us strengthen RubyGems.org’s security and establish a better foundation for maintaining and scaling the platform moving forward. 
- **Sustainable practices:** With guidance from Trail of Bits, we’re creating systems for continuous improvement, including regular security reviews and automation of critical processes.

The audit reinforced that RubyGems.org is performing well given its age, scale, and relatively limited resources as an open source project. Now, with a clearer understanding of where to focus our efforts, we can work to make it even more secure and reliable for the countless developers and companies that depend on it.

# Acknowledgements

We would like to thank the Trail of Bits team for their analysis and recommendations. You can also read a detailed breakdown of the audit on the [Trail of Bits blog](https://blog.trailofbits.com/2024/12/11/auditing-the-ruby-ecosystems-central-package-repository/), which shares more information about their process and findings. 

Additionally, we would like to acknowledge the [Alpha-Omega Project](https://alpha-omega.dev/) for their support in funding this audit and other essential Ruby Central initiatives. The Alpha-Omega Project’s mission is to protect society by catalyzing sustainable security improvements to the most critical open source software projects and ecosystems. They aim to build a world where critical open source projects are secure and where security vulnerabilities are found and fixed quickly.

Together, we’re making RubyGems.org stronger, more secure, and more resilient as Ruby continues to grow into the future.

