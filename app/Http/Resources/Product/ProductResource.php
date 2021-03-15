<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name_product' => $this->name_product,
            'description' => $this->description_product,
            'cost' => $this->cost_product,
            'name_supplier' => $this->name_supplier
        ];
    }
}
