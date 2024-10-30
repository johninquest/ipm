import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(context),
            _buildFeaturesSection(context),
            _buildCtaSection(context),
            //  _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(15, 76, 129, 1),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Text(
            'All Your Insurance Policies, One App',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'One simple app to manage all your insurance policies from different providers. Stay organized, informed, and protected.',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white70,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color.fromRGBO(15, 76, 129, 1),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Get Started'),
          ),
          const SizedBox(height: 12),
          /*  OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Learn More'),
          ), */
        ],
      ),
    );
  }

  Widget _buildFeaturesSection(BuildContext context) {
    final features = [
      _Feature(
        icon: Icons.shield,
        title: 'All Your Policies in One Place',
        description:
            'Manage all your insurance policies in a single, secure application',
      ),
      _Feature(
        icon: Icons.phone_android,
        title: 'Easy Access Anywhere',
        description:
            'Access your policy information anytime, anywhere on your mobile device',
      ),
      /* _Feature(
        icon: Icons.notifications,
        title: 'Smart Reminders',
        description: 'Never miss a renewal with automated policy reminders',
      ),
      _Feature(
        icon: Icons.lock,
        title: 'GDPR Compliant',
        description:
            'Your data is protected with state-of-the-art security measures',
      ),
      _Feature(
        icon: Icons.refresh,
        title: 'Policy Optimization',
        description:
            'Get smart suggestions to optimize your insurance coverage',
      ), */
      _Feature(
        icon: Icons.language,
        title: 'Multilingual Support',
        description:
            'Now available in German and English. Other languages coming soon',
      ),
    ];

    return Container(
      color: Colors.grey[50],
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            'Everything You Need to Manage Your Insurance',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: const Color.fromRGBO(15, 76, 129, 1),
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: features.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: _FeatureCard(feature: features[index]),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCtaSection(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(15, 76, 129, 1),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            'Ready to Simplify Your Insurance Management?',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Join thousands of users who are already managing their policies smarter.',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white70,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color.fromRGBO(15, 76, 129, 1),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Download Now'),
          ),
        ],
      ),
    );
  }

/*   Widget _buildFooter(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      padding: const EdgeInsets.all(24),
      child: const Column(
        children: [
          _FooterSection(
            title: 'Product',
            items: ['Features', 'Pricing', 'Security'],
          ),
          SizedBox(height: 24),
          _FooterSection(
            title: 'Company',
            items: ['About Us', 'Contact', 'Careers'],
          ),
          SizedBox(height: 24),
          _FooterSection(
            title: 'Resources',
            items: ['Blog', 'Help Center', 'Community'],
          ),
          SizedBox(height: 24),
          _FooterSection(
            title: 'Legal',
            items: ['Privacy Policy', 'Terms of Service', 'GDPR'],
          ),
        ],
      ),
    );
  } */
}

class _Feature {
  final IconData icon;
  final String title;
  final String description;

  _Feature({
    required this.icon,
    required this.title,
    required this.description,
  });
}

class _FeatureCard extends StatelessWidget {
  final _Feature feature;

  const _FeatureCard({required this.feature});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  feature.icon,
                  color: const Color.fromRGBO(15, 76, 129, 1),
                  size: 24,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    feature.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(15, 76, 129, 1),
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              feature.description,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
/* 
class _FooterSection extends StatelessWidget {
  final String title;
  final List<String> items;

  const _FooterSection({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 12),
        ...items.map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                item,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[400],
                    ),
              ),
            )),
      ],
    );
  }
}
 */