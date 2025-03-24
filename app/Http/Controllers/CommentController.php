<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ticket;
use App\Http\Resources\CommentResource;

use App\Http\Requests\StoreCommentRequest;

class CommentController extends Controller
{
    public function store(StoreCommentRequest $request, Ticket $ticket)
    {
        $this->authorize('view', $ticket);

        $comment = $ticket->comments()->create([
            'content' => $request->content,
            'user_id' => auth()->id()
        ]);

        return response()->json(new CommentResource($comment), 201);
    }
}
