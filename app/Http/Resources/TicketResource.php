<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TicketResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
            return [
            'id' => $this->id,
            'subject' => $this->subject,
            'status' => $this->status,
            'category' => $this->category,
            'priority' => $this->priority,
            'comments' => CommentResource::collection($this->comments),
            'chat' => new ChatResource($this->chat)
        ];
    }
}
