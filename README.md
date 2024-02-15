# pets_finder

A simple Flutter application for managing todos with CRUD operations.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Project Structure](#project-structure)

## Introduction

Welcome to the Todo App! This Flutter application allows users to create, read, update, and delete todo items. The focus is on providing an intuitive and visually appealing interface for managing tasks efficiently.

## Features

- Pet List
- Pet Details

## Getting Started

### Prerequisites

Make sure you have Flutter and Dart installed on your machine. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/karar0120/todo-app-flutter.git
    cd todo-app-flutter
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Run the app:

    ```bash
    flutter run
    ```

## Project Structure

    .
    ├── core                       # For all common and core files.
    │   ├── error                  # contains all Exceptions and Failures classes
    │   ├── presentation           # Common presentation files
    |   │   └── blocs              # Common blocs
    |   │   └── pages              # Core pages
    |   │   └── widgets            # Common widgets
    │   └── route                  # Routes for navigation
    │   └── theme                  # Theme data
    │   └── usecases               # Common usecases
    |
    ├── data                       # Data Files of Feature 1
    │   ├── datasources            # DataSources Abstract Files and Implementations
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── models                 # Models for data
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Implementation Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    ├── domain                     # Domain
    │   ├── entities               # Entities For Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── usecases               # Usecases of Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Abstract Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    └── presentation               # Presentation files
        ├── blocs                  # Blocs
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        ├── pages                  # Pages
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        └── widgets                # Widgets
            └── feature            # Feature 1 (for exp : Todo Feature)
                └── sub-feat.      # Sub feature

## Architecture

This app uses [***Clean Architecture by Robert C Martin***]

<img src="https://github.com/ResoCoder/flutter-tdd-clean-architecture-course/blob/master/architecture-proposal.png" style="display: block; margin-left: auto; margin-right: auto; width: 75%;"/>

Image Source : [ResoCoder](https://resocoder.com)

## Branches

    .
    ├── master                       # Contains the latest release
           ├── dev                   # Contains the latest development
                ├── feature1         # feature 1 created from dev
                ├── feature2         # feature 2 created from dev
                ├── feature3         # feature 3 created from dev
                ├── bugFix1          # bugfix 1 created from dev
                ├── bugFix2          # bugfix 1 created from dev
                ├── docChange1       # docChange 1 created from dev
                ├── docChange1       # docChange 2 created from dev

## Pet List:

- Implemented a list view displaying pet data, including the first small photo, name, gender, and type.
- Handled cases where name, gender, or city have empty values, displaying "NA" accordingly.
- Implemented a placeholder for cases where no photo is received.
- Implemented pet type filtering based on available filters (All, Cat, Horse, Bird, Rabbit).
- Ensured that the "All" tab is selected by default upon app launch.
- Implemented horizontal scrolling for the filter tabs, ensuring visibility of all options.
- Implemented pagination to load the next page when scrolling to the bottom of the list.

## Pet Details:

- Implemented the display of pet details upon selection, including the first medium photo, name, size, primary color, and address.
- Handled cases where name, size, primary color, or address have empty values, displaying "NA" accordingly.
- Implemented a placeholder for cases where no photo is received.
- Implemented functionality to open the publisher's website when the button is clicked.
- Implemented navigation back to the main screen from the pet details screen.     
                
# :iphone: Screens
