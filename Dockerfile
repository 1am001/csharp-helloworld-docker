# Use the official .NET SDK image to build the application
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

# Set the working directory
WORKDIR /app

# Copy the C# program into the container
COPY Program.cs .

# Compile the C# program
RUN dotnet new console -o myapp && \
    cp Program.cs myapp/ && \
    cd myapp && \
    dotnet build -c Release -o out

# Use the official .NET runtime image to run the application
FROM mcr.microsoft.com/dotnet/runtime:7.0

# Set the working directory
WORKDIR /app

# Copy the compiled application from the build stage
COPY --from=build /app/myapp/out .

# Define the entry point for the container
ENTRYPOINT ["dotnet", "myapp.dll"]
