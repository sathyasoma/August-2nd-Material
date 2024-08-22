package com.core.studen_grade_calculator;

import java.util.Scanner;

public class StudentGradesCalculator {
    public static void main(String[] args) {
        // Create Scanner object for input
        Scanner scanner = new Scanner(System.in);

        // Input student's name and age
        System.out.print("Enter student's name: ");
        String name = scanner.nextLine();

        System.out.print("Enter student's age: ");
        int age = scanner.nextInt();

        // Input grades for 3 subjects
        System.out.print("Enter grade for Math: ");
        double mathGrade = scanner.nextDouble();

        System.out.print("Enter grade for Science: ");
        double scienceGrade = scanner.nextDouble();

        System.out.print("Enter grade for English: ");
        double englishGrade = scanner.nextDouble();

        // Calculate the average grade
        double averageGrade = (mathGrade + scienceGrade + englishGrade) / 3;

        // Determine grade classification
        String classification;
        if (averageGrade >= 70) {
            classification = "First Class";
        } else if (averageGrade >= 60) {
            classification = "Second Class";
        } else if (averageGrade >= 50) {
            classification = "Pass";
        } else {
            classification = "Fail";
        }

        // Output the student's details and classification
        System.out.println("\nStudent Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Math Grade: " + mathGrade);
        System.out.println("Science Grade: " + scienceGrade);
        System.out.println("English Grade: " + englishGrade);
        System.out.println("Average Grade: " + averageGrade);
        System.out.println("Grade Classification: " + classification);

        // Close the scanner
        scanner.close();
    }
}

