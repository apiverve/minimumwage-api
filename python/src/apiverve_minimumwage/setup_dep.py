from setuptools import setup, find_packages

setup(
    name='apiverve_minimumwage',
    version='1.1.13',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Minimum Wage provides current minimum wage rates for all US states plus the federal minimum. Includes tipped minimum wages, effective rates (higher of state or federal), and historical federal minimum wage data.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/minimumwage?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
