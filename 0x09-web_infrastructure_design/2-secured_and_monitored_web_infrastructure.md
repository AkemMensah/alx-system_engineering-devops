Secured and Monitored Web Infrastructure

Description:
This infrastructure comprises three interconnected web servers, meticulously fortified to ensure security, continuous monitoring, and the delivery of encrypted data traffic.

Key Aspects of This Infrastructure:

1. Firewall Functionality: The firewalls within this infrastructure serve a crucial purpose: safeguarding the network, particularly the web servers, against unwarranted and unauthorized access. Acting as a protective barrier between the internal and external networks, these firewalls vigilantly filter incoming traffic, intercepting any that matches predefined criteria. Their role is pivotal in maintaining network security.

2. SSL Certificate's Role: The SSL certificate is instrumental in fortifying the data exchange between the web servers and the external network. Its primary objective is to thwart potential man-in-the-middle (MITM) attacks and the prying eyes of network sniffers. By encrypting data traffic, these certificates ensure the confidentiality, integrity, and authentication of the communication.

3. Monitoring Client Utility: The monitoring clients play a pivotal role in overseeing the servers and external network. They conduct comprehensive assessments of server performance and functionality, gauging their overall health. When deviations from expected performance occur, these monitoring tools promptly alert administrators. These tools continually observe server operations, providing vital metrics for administrators' reference. Additionally, they carry out automated tests to evaluate server accessibility, response times, and promptly flag errors such as corrupted or missing files, security vulnerabilities, and other potential issues.

Infrastructure Challenges:
1. SSL Termination at Load Balancer Level: A notable challenge lies in the termination of SSL connections at the load balancer level. This approach leaves the data traffic between the load balancer and the web servers unencrypted, potentially exposing it to vulnerabilities.
2. Single MySQL Server: Another issue pertains to the utilization of a single MySQL server. This design choice lacks scalability and introduces a single point of failure for the entire web infrastructure. To enhance reliability and accommodate future growth, a more scalable database solution is advisable.
3. Uniform Server Components: The deployment of servers with identical components introduces resource contention within each server, encompassing CPU, memory, and I/O, among others. This contention can lead to suboptimal performance and complicates the identification of the root cause of issues. A more diversified server setup is recommended to improve scalability and performance while facilitating efficient problem diagnosis.


