# Customer Support Ticketing System 

A full-stack customer support system with real-time chat functionality between customers and administrators.

## Features ✨
- **User Authentication** 
  - Role-based access (Admin/Customer)
  - Laravel Token-based authentication
- **Ticket Management** 
  - CRUD operations with attachments
  - Category/Priority/Status management
- **Real-Time Chat** 
  - WebSocket-based communication
  - Message history persistence
- **Security** 
  - CSRF protection
  - File upload validation
  - SQL injection prevention

## Table of Contents 📖
- [Project Setup](#project-setup-)
- [API Documentation](#api-documentation-)
- [Chat Architecture](#chat-architecture-)

---

## Project Setup 🛠️

### Prerequisites
- PHP 8.2+
- Node.js 18+
- MySQL 8+
- Composer 2.5+
- Pusher account (free tier)

## API End Point
Method	Endpoint	Description 
POST	/register	User registration
POST	/login	User login
POST	/logout	User logout

Sample Request (Login):
{
  "email": "test@gmail.com",
  "password": "11223344"
}
### Ticket Management
    Method	Endpoint	    Description
    GET  	/tickets	    List all tickets
    POST	/tickets	    Create new ticket
    GET 	/tickets/{id}	Update ticket
    PUT 	/tickets/{id}	Update ticket
    DELETE	/tickets/{id}	Delete ticket


### Ticket Schema
    {
      "subject": "Login Issues",
      "description": "Can't access account",
      "category": "Technical",
      "priority": "High"
    }

### Chat Endpoints

    Method	Endpoint	                Description
    GET 	/tickets/{id}/chat	        Get chat history
    POST	/tickets/{id}/chat/messages	Send new message

    sample
    {
      "content": "Need urgent assistance!"
    }


## Chat Architecture
### Technical Stack
  -	Backend: Laravel WebSockets + Pusher
  -	Frontend: Vue 3 + Laravel Inertia
  -	Protocol: WebSocket

### Key Component
  -	Real-Time Engine
  -	Pusher Channels for WebSocket communication
  -	Laravel Echo for event broadcasting
  -	Private channels for ticket-specific chats


## EVENT FLOW
### Sequence Diagram
  - Frontend->>Backend: POST /messages
  - Backend->>Database: Store message
  - Backend->>Pusher: Broadcast NewMessage event
  - Pusher->>Frontend: Deliver via WebSocket



### Installation Guide

1. **Clone Repository**
   ```bash
   git clone https://github.com/JosephDebugger/ticket-app.git
   cd ticket-ad
