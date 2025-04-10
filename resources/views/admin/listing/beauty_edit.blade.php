@extends('layouts.admin')
@section('title', get_phrase('Update Listing'))
@push('css')
    <link rel="stylesheet" href="{{ asset('assets/frontend/css/mapbox-gl.css') }}">
    <script src="{{ asset('assets/frontend/js/mapbox-gl.js') }}"></script>
@endpush
@section('admin_layout')
    @include('admin.listing.listing_style')
    @php
        $tab = isset($tab) ? $tab : 0;
    @endphp
    <div class="ol-card">
        <div class="ol-card-body p-3 d-flex align-items-center justify-content-between">
            <h3 class="title fs-16px d-flex align-items-center"> <i class="fi-rr-settings-sliders me-2"></i> {{ ucwords($type) . ' ' . get_phrase('Listing Update') }} </h3>
            <a href="{{ route('admin.listing.create') }}" class="btn ol-btn-outline-secondary d-flex align-items-center cg-10px">
                <span class="fi-rr-plus"></span>
                <span> {{ get_phrase('Add New Listing') }} </span>
            </a>
        </div>
    </div>
    {{-- {{$tab}} --}}
    <div class="ol-card mt-3">
        <div class="ol-card-body p-3">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link {{ $tab == 0 ? 'active' : '' }}" id="basic-tab" data-bs-toggle="tab" data-bs-target="#basic" type="button" role="tab" aria-controls="basic" aria-selected="true"> {{ get_phrase('Basic Info') }} </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link {{ $tab == 'service' ? 'active' : '' }}" id="services-tab" data-bs-toggle="tab" data-bs-target="#services" type="button" role="tab" aria-controls="services" aria-selected="false"> {{ get_phrase('Services') }} </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="open-time-tab" data-bs-toggle="tab" data-bs-target="#open-time" type="button" role="tab" aria-controls="open-time" aria-selected="false"> {{ get_phrase('Opening Time') }} </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link {{ $tab == 'team' ? 'active' : '' }}" id="team-member-tab" data-bs-toggle="tab" data-bs-target="#team-member" type="button" role="tab" aria-controls="team-member" aria-selected="false"> {{ get_phrase('Team Members') }} </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="address-tab" data-bs-toggle="tab" data-bs-target="#address" type="button" role="tab" aria-controls="address" aria-selected="false"> {{ get_phrase('Address') }} </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="seo-tab" data-bs-toggle="tab" data-bs-target="#seo" type="button" role="tab" aria-controls="seo" aria-selected="false"> {{ get_phrase('Seo') }} </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="media-tab" data-bs-toggle="tab" data-bs-target="#media" type="button" role="tab" aria-controls="media" aria-selected="false"> {{ get_phrase('Media') }} </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="claim-tab" data-bs-toggle="tab" data-bs-target="#claim" type="button" role="tab" aria-controls="claim" aria-selected="false"> {{ get_phrase('Claim') }} </button>
                </li>
            </ul>

            <form action="{{ route('admin.listing.update', ['type' => 'beauty', 'id' => $listing->id]) }}" id="form-action" method="post" enctype="multipart/form-data" class="position-relative">
                @csrf
                <div class="subMit eSubmit">
                    <button type="submit" id="form-action-btn" class="btn ol-btn-outline-secondary"> {{ get_phrase('Update') }} </button>
                </div>
                <div class="tab-content pt-3" id="myTabContent">
                    <div class="tab-pane fade show {{ $tab == 0 ? 'active' : '' }}" id="basic" role="tabpanel" aria-labelledby="basic-tab">
                        <div class="mb-3">
                            <label for="title" class="form-label ol-form-label"> {{ get_phrase('Listing title') }} *</label>
                            <input type="text" class="form-control ol-form-control" name="title" id="title" placeholder="{{ get_phrase('Enter listing title') }}" value="{{ $listing->title }}" required>
                        </div>
                        <input type="text" name="category" id="category" value="{{ $listing->category }}" class="d-none">
                        <div class="mb-3">
                            <label for="category" class="form-label ol-form-label"> {{ get_phrase('category') }} *</label>
                            <select name="category" id="category" class="form-control ol-form-control ol-select2" data-select2-id="select2-data-1-2ry6" tabindex="-1" aria-hidden="true">
                                <option value=""> {{ get_phrase('Select listing category') }} </option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}" {{ $category->id == $listing->category ? 'selected' : '' }}> {{ $category->name }} </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="engine_size" class="form-label ol-form-label"> {{ get_phrase('Description') }} *</label>
                            <textarea name="description" id="description" cols="30" rows="3" class="form-control ol-form-control" placeholder="{{ get_phrase('Enter listing description') }}">{{ $listing->description }}</textarea>
                        </div>
                        <div class="mb-3">
                            <label for="visibility" class="form-label ol-form-label"> {{ get_phrase('Visibility') }} *</label>
                            <select name="visibility" id="visibility" class="form-control ol-form-control ol-select2" required data-minimum-results-for-search="Infinity">
                                <option value=""> {{ get_phrase('Select listing visibility') }} </option>
                                <option value="visible" {{ $listing->visibility == 'visible' ? 'selected' : '' }}> {{ get_phrase('Visible') }} </option>
                                <option value="hidden" {{ $listing->visibility == 'hidden' ? 'selected' : '' }}> {{ get_phrase('Hidden') }} </option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="is_popular" class="form-label ol-form-label"> {{ get_phrase('Type') }} *</label>
                            <select name="is_popular" id="is_popular" class="form-control ol-form-control ol-select2" required data-minimum-results-for-search="Infinity">
                                <option value=""> {{ get_phrase('Select  type') }} </option>
                                <option value="popular" {{ $listing->is_popular == 'popular' ? 'selected' : '' }}> {{ get_phrase('Popular') }} </option>
                                <option value="best" {{ $listing->is_popular == 'best' ? 'selected' : '' }}> {{ get_phrase('Best') }} </option>
                                <option value="wellness" {{ $listing->is_popular == 'wellness' ? 'selected' : '' }}> {{ get_phrase('Wellness') }} </option>

                            </select>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="latitude" class="form-label ol-form-label"> {{ get_phrase('Latitude') }} *</label>
                                    <input type="text" name="latitude" id="latitude" class="form-control ol-form-control" value="{{ $listing->Latitude }}" placeholder="{{ get_phrase('Enter Latitude code') }}">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="longitude" class="form-label ol-form-label"> {{ get_phrase('Longitude') }} *</label>
                                    <input type="text" name="longitude" id="longitude" class="form-control ol-form-control" value="{{ $listing->Longitude }}" placeholder="{{ get_phrase('Enter longitude code') }}">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <link rel="stylesheet" href="{{ asset('assets/backend/css/leaflet.css') }}">
                            <script src="{{ asset('assets/backend/js/leaflet.js') }}"></script>
                            <div id="map" class="rounded h-400"></div>
                            <script type="text/javascript">
                                "use strict";
                                var map = L.map('map').setView([40.706486, -74.014700], 13);
                                L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                                    maxZoom: 5,
                                    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                                }).addTo(map);

                                // Create a popup
                                var popup = L.popup();

                                // Define a function to handle map clicks
                                function onMapClick(e) {
                                    var lat = e.latlng.lat.toFixed(5);
                                    var lng = e.latlng.lng.toFixed(5);
                                    popup
                                        .setLatLng(e.latlng)
                                        .setContent("You clicked at:<br>Latitude: " + lat + "<br>Longitude: " + lng)
                                        .openOn(map);
                                    document.getElementById('latitude').value = lat;
                                    document.getElementById('longitude').value = lng;
                                }
                                map.on('click', onMapClick);
                            </script>
                        </div>
                    </div>
                    <div class="tab-pane fade show {{ $tab == 'service' ? 'active' : '' }}" id="services" role="tabpanel" aria-labelledby="services-tab">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h5 class="fs-16px title mb-3"> {{ get_phrase('Add some listing service') }} </h5>
                            <a href="javascript:void(0);" onclick="modal('modal-md', '{{ route('admin.amenities.add', ['prefix' => 'admin', 'type' => 'beauty', 'item' => 'service', 'page' => 'listing', 'listing_id' => $listing->id]) }}', '{{ get_phrase('Add New Service') }}')" class="btn ol-btn-primary fs-14px"> {{ get_phrase('Add Service') }} </a>
                        </div>
                        @php
                            $services = App\Models\Amenities::where('type', 'beauty')->where('identifier', 'service')->get();
                        @endphp
                        <div class="row">
                            @foreach ($services as $key => $service)
                                <div class="col-sm-3">
                                    <div class="position-relative">
                                        <input class="form-check-input d-none" name="service[]" type="checkbox" value="{{ $service->id }}" id="flexCheckDefau{{ $key }}" @if ($listing->service && $listing->service != 'null' && in_array($service->id, json_decode($listing->service))) checked @endif>
                                        <label class="form-check-label w-100" onclick="service_select('{{ $key }}')" for="flexCheckDefau{{ $key }}">
                                            <div class="card mb-3 team-checkbox">
                                                <div class="col-md-8 team-body">
                                                    <div class="card-body py-2 px-2 ms-1">
                                                        <p class="card-title line-1"> {{ $service->name }} </p>
                                                        <p class="card-text line-1"> {{ $service->time }} </p>
                                                        <p class="card-text"> {{ get_phrase('From') . ' ' . currency($service->price) }} </p>
                                                    </div>
                                                    <div class="checked @if ($listing->service && $listing->service != 'null' && in_array($service->id, json_decode($listing->service))) @else d-none @endif" id="service-checked{{ $key }}">
                                                        <i class="fas fa-check"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </label>
                                        <div class="d-flex Eamen g-2 dleBtn">
                                            <a data-bs-toggle="tooltip" data-bs-title="{{ get_phrase('edit') }}" onclick="edit_modal('modal-md','{{ route('admin.amenities.edit', ['prefix' => 'admin', 'id' => $service->id]) }}','{{ get_phrase('Update Service') }}')" href="javascript:void(0);"><i class="fas fa-edit"></i> </a>
                                            <a data-bs-toggle="tooltip" data-bs-title="{{ get_phrase('delete') }}" onclick="delete_modal('{{ route('admin.amenities.delete', ['prefix' => 'admin', 'id' => $service->id]) }}')" href="javascript:void(0);"><i class="fas fa-trash"></i></a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="tab-pane fade show" id="open-time" role="tabpanel" aria-labelledby="open-time-tab">

                        <div class="row justify-content-center">
                            <div class="col-sm-5">
                                @php
                                    if (json_decode($listing->opening_time)) {
                                        $opening_times = json_decode($listing->opening_time);
                                    } else {
                                        $times = '{"saturday":{"open":"closed","close":"closed"},"sunday":{"open":"closed","close":"closed"},"monday":{"open":"closed","close":"closed"},"tuesday":{"open":"closed","close":"closed"},"wednesday":{"open":"closed","close":"closed"},"thursday":{"open":"closed","close":"closed"},"friday":{"open":"closed","close":"closed"}}';
                                        $opening_times = json_decode($times);
                                    }
                                @endphp
                                @foreach ($opening_times as $key => $day)
                                    <div class="mb-3">
                                        <label for="{{ $key }}_open" class="form-label ol-form-label"> {{ ucwords($key) . ' ' . get_phrase('Opening') }} </label>
                                        <select name="{{ $key }}_open" id="{{ $key }}}_open" class="form-control ol-form-control ol-select2" required data-minimum-results-for-search="Infinity">
                                            <option value="closed">{{ get_phrase('Closed') }}</option>
                                            <?php for($i = 0; $i < 24; $i++): ?>
                                            <option value="{{ $i }}" {{ $day->open == $i ? 'selected' : '' }}>{{ date('h:i A', strtotime("$i:00:00")) }}</option>
                                            <option value="{{ $i . ':30' }}" {{ $day->open == $i . ':30' ? 'selected' : '' }}> {{ date('h:i A', strtotime("$i:30:00")) }} </option>
                                            <?php endfor; ?>
                                        </select>
                                    </div>
                                @endforeach
                            </div>
                            <div class="col-sm-5">
                                @foreach ($opening_times as $key => $day)
                                    <div class="mb-3">
                                        <label for="{{ $key }}_close" class="form-label ol-form-label"> {{ ucwords($key) . ' ' . get_phrase('Closing') }} </label>
                                        <select name="{{ $key }}_close" id="{{ $key }}}_close" class="form-control ol-form-control ol-select2" required data-minimum-results-for-search="Infinity">
                                            <option value="closed">{{ get_phrase('Closed') }}</option>
                                            <?php for($i = 0; $i < 24; $i++): ?>
                                            <option value="{{ $i }}" {{ $day->close == $i ? 'selected' : '' }}>{{ date('h:i A', strtotime("$i:00:00")) }}</option>
                                            <option value="{{ $i . ':30' }}" {{ $day->close == $i . ':30' ? 'selected' : '' }}> {{ date('h:i A', strtotime("$i:30:00")) }} </option>
                                            <?php endfor; ?>
                                        </select>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade show {{ $tab == 'team' ? 'active' : '' }}" id="team-member" role="tabpanel" aria-labelledby="team-member-tab">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h5 class="fs-16px title mb-3"> {{ get_phrase('Select some team members') }} </h5>
                            <a href="javascript:void(0);" onclick="modal('modal-md', '{{ route('admin.amenities.add', ['prefix' => 'admin', 'type' => 'beauty', 'item' => 'team', 'page' => 'listing', 'listing_id' => $listing->id]) }}', '{{ get_phrase('Add Team Member') }}')" class="btn ol-btn-primary fs-14px"> {{ get_phrase('Add Team') }} </a>
                        </div>
                        @php
                            $teams = App\Models\Amenities::where('type', 'beauty')->where('identifier', 'team')->get();
                        @endphp
                        <div class="row">
                            @foreach ($teams as $key => $team)
                                <div class="col-sm-3">
                                    <div class="position-relative">
                                        <input class="form-check-input d-none" name="team[]" type="checkbox" value="{{ $team->id }}" id="flexCheckDefault{{ $key }}" @if ($listing->team && $listing->team != 'null' && in_array($team->id, json_decode($listing->team))) checked @endif>
                                        <label class="form-check-label w-100" onclick="team_select('{{ $key }}')" for="flexCheckDefault{{ $key }}">
                                            <div class="card mb-3 team-checkbox">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img class="object-fit" src="{{ get_all_image('team/' . $team->image) }}" class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8 team-body">
                                                        <div class="card-body py-0 px-2">
                                                            <p class="card-title mb-0 line-1"> {{ $team->name }}</p>
                                                            <p class="card-text"> {{ $team->designation }} </p>
                                                        </div>
                                                        <div class="checked @if ($listing->team && $listing->team != 'null' && in_array($team->id, json_decode($listing->team))) @else d-none @endif" id="team-checked{{ $key }}">
                                                            <i class="fas fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </label>
                                        <a data-bs-toggle="tooltip" data-bs-title="{{ get_phrase('delete') }}" onclick="delete_modal('{{ route('admin.amenities.delete', ['prefix' => 'user', 'id' => $team->id]) }}')" href="javascript:void(0);" class="dleBtn"><i class="fas fa-trash"></i></a>
                                    </div>

                                </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="tab-pane fade" id="address" role="tabpanel" aria-labelledby="address-tab">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="engine_size" class="form-label ol-form-label"> {{ get_phrase('Country') }} *</label>
                                    <select name="country" id="country" class="form-control ol-form-control ol-select2">
                                        <option value=""> {{ get_phrase('Select listing country') }} </option>
                                        @foreach (App\Models\Country::get() as $country)
                                            <option value="{{ $country->id }}" {{ $listing->country == $country->id ? 'selected' : '' }}> {{ get_phrase($country->name) }} </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="city" class="form-label ol-form-label"> {{ get_phrase('City') }} *</label>
                                    <select name="city" id="city" class="form-control ol-form-control ol-select2" data-minimum-results-for-search="Infinity">
                                        <option value="{{ $listing->city }}"> {{ App\Models\City::where('id', $listing->city)->first()->name }} </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label ol-form-label"> {{ get_phrase('Address') }} *</label>
                            <textarea name="address" id="list_address" cols="30" rows="3" class="form-control ol-form-control" placeholder="{{ get_phrase('Enter listing address') }}">{{ $listing->address }}</textarea>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="mb-3">
                                    <label for="post_code" class="form-label ol-form-label"> {{ get_phrase('Post Code') }} *</label>
                                    <input type="text" name="post_code" id="post_code" class="form-control ol-form-control" placeholder="{{ get_phrase('Enter post code') }}" value="{{ $listing->postal_code }}">
                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="tab-pane fade" id="seo" role="tabpanel" aria-labelledby="seo-tab">
                        <div class="mb-3">
                            <label for="meta_title" class="form-label ol-form-label"> {{ get_phrase('Meta Title') }}</label>
                            <input type="text" name="meta_title" id="meta_title" class="form-control ol-form-control" value="{{ $listing->meta_title }}" placeholder="{{ get_phrase('Enter meta title') }}">
                        </div>
                        <div class="mb-3">
                            <label for="keyword" class="form-label ol-form-label"> {{ get_phrase('Meta keywords') }}</label>
                            <input type="text" name="keyword" id="keyword" class="form-control ol-form-control" placeholder="{{ get_phrase('Keyword1; keyword2; keyword3;') }}" value="{{ $listing->meta_keyword }}">
                        </div>
                        <div class="mb-3">
                            <label for="meta_description" class="form-label ol-form-label"> {{ get_phrase('Meta Description') }} *</label>
                            <textarea name="meta_description" id="meta_description" cols="30" rows="3" class="form-control ol-form-control" placeholder="{{ get_phrase('Enter meta description') }}">{{ $listing->meta_description }}</textarea>
                        </div>
                        <div class="mb-3">
                            <label for="og_title" class="form-label ol-form-label"> {{ get_phrase('OG title') }}</label>
                            <input type="text" name="og_title" id="og_title" class="form-control ol-form-control" placeholder="{{ get_phrase('Enter og title') }}" value="{{ $listing->og_title }}">
                        </div>
                        <div class="mb-3">
                            <label for="canonical_url" class="form-label ol-form-label"> {{ get_phrase('Canonical URL') }}</label>
                            <input type="text" name="canonical_url" id="canonical_url" class="form-control ol-form-control" placeholder="{{ get_phrase('Enter canonical URL') }}" value="{{ $listing->canonical_url }}">
                        </div>
                        <div class="mb-3">
                            <label for="og_description" class="form-label ol-form-label"> {{ get_phrase('OG Description') }} *</label>
                            <textarea name="og_description" id="og_description" cols="30" rows="3" class="form-control ol-form-control" placeholder="{{ get_phrase('Enter meta description') }}">{{ $listing->og_description }}</textarea>
                        </div>
                        <div class="mb-3">
                            <label for="json_id" class="form-label ol-form-label"> {{ get_phrase('Json ID') }}</label>
                            <input type="text" name="json_id" id="json_id" class="form-control ol-form-control" placeholder="{{ get_phrase('Enter json ID') }}" value="{{ $listing->json_id }}">
                        </div>
                        <div class="mb-3">
                            <label for="og_image" class="form-label ol-form-label"> {{ get_phrase('OG Image') }}</label>
                            <input type="file" name="og_image" id="og_image" class="form-control ol-form-control">
                        </div>

                    </div>
                    <div class="tab-pane fade" id="media" role="tabpanel" aria-labelledby="media-tab">
                        <div class="row">
                            <div class="col-sm-2">
                                <span> {{ get_phrase('Listing Images') }} :</span>
                            </div>
                            <div class="col-sm-10">
                                <div class="d-flex flex-wrap" id="image-container">
                                    <!-- Image previews will be dynamically added here -->
                                    @foreach (json_decode($listing->image) as $key => $image)
                                        <div class="possition_relative" id="image-icon{{ $key }}">
                                            <img class="object-fit" src="{{ get_all_image('listing-images/' . $image) }}" class="rounded" height="50" width="50">

                                            <a href="javascript:void(0);" onclick="listing_image_delete('{{ route('admin.listing.image.delete', ['type' => $type, 'id' => $listing->id, 'image' => $image]) }}', '{{ $key }}')"> <i data-bs-toggle="tooltip" data-bs-title="{{ get_phrase('delete') }}" class="fas fa-trash-alt"></i> </a>
                                        </div>
                                    @endforeach
                                </div>

                                <div class="form-group">
                                    <label for="listing-icon-image" class="file-upload-label">
                                        <div class="label-bg">
                                            <span>{{ get_phrase('Click to upload SVG, PNG, JPG, or GIF') }} ({{ get_phrase('max 500 x 700px') }})</span>
                                        </div>
                                    </label>
                                    <input type="file" id="listing-icon-image" name="listing_image[]" class="form-control d-none" multiple>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-sm-2">
                                <span> {{ get_phrase('Preview Video') }} :</span>
                            </div>
                            <div class="col-sm-10">
                                <input type="text" name="video" id="video" class="form-control ol-form-control" value="{{ $listing->video }}">
                            </div>
                        </div>
                    </div>
                    {{-- Claim  --}}
                    
                    <div class="tab-pane fade" id="claim" role="tabpanel" aria-labelledby="claim-tab">

                        <div class="card pt-5 pb-5 claimCard">
                            @php 
                            $claimed = App\Models\ClaimedListing::where('listing_id', $listing->id)->where('listing_type','beauty')->first();
                        @endphp
                        
                        @if($claimed && $claimed->status == 1)
                            <div class="card-body approveClaim">
                                <img src="{{asset('assets/frontend/images/verified.svg')}}" alt="">
                                <p class="text-center mb-2">{{$claimed->user_name}}</p>
                                <p class="text-center mb-2">{{$claimed->user_phone}}</p>
                                <p class="text-center mb-3">{{$claimed->additional_info}}</p>
                                <a href="javascript:;" onclick="delete_modal('{{route('admin.claim-listing.delete',[ 'id'=>$claimed->id])}}')" class="btn ol-btn-outline-secondary d-flex m-auto ">{{get_phrase('Remove verification Status')}}</a>
                            </div>
                        @elseif($claimed && $claimed->status == 0) 
                         <div class="card-body approveClaim">
                            <p class="text-center mb-2">{{$claimed->user_name}}</p>
                            <p class="text-center mb-2">{{$claimed->user_phone}}</p>
                            <p class="text-center mb-3">{{$claimed->additional_info}}</p>
                             <div class="text-center">
                                <a href="javascript:;" onclick="confirm_modal('{{route('admin.claim-listing.approve',['type' => 'beauty', 'listing_id'=>$claimed->id])}}')" class="btn ol-btn-outline-secondary  m-auto ">{{get_phrase('Approve')}}</a>
                                <a href="javascript:;" onclick="delete_modal('{{route('admin.claim-listing.delete',[ 'id'=>$claimed->id])}}')" class="btn ol-btn-outline-secondary  m-auto ">{{get_phrase('Delete')}}</a>
                             </div>
                        </div>
                        @else
                            <div class="card-body">
                                <h5 class="text-center mb-4">{{get_phrase('This directory is not yet verified !')}}</h5>
                                <a href="javascript:;" onclick="edit_modal('modal-md','{{route('admin.claimed_listing.form',['type' =>$listing->type, 'id'=>$listing->id])}}','{{get_phrase('Provide Validity')}}')" class="btn ol-btn-outline-secondary d-flex m-auto ">{{get_phrase('Provide Validity')}}</a>
                            </div>
                        @endif
                              
                        </div>
                    </div>
                    {{-- Claim  --}}
                    
                </div>
            </form>

        </div>
    </div>

    @include('admin.listing.listing_script')

    <script>
        "use strict";
        $("#form-action-btn").on('click', function() {
            event.preventDefault();
            var listing_category = $("#category").val();
            if (!listing_category) {
                warning('Listing category is required');
            }
            var listing_title = $("#title").val();
            if (!listing_title) {
                warning('Listing title is required');
            }
            var listing_description = $("#description").val();
            if (!listing_description) {
                warning('Listing description is required');
            }
            var listing_visibility = $("#visibility").val();
            if (!listing_visibility) {
                warning('Listing visibility is required');
            }
            var listing_country = $("#country").val();
            if (!listing_country) {
                warning('Listing country is required');
            }
            var listing_city = $("#city").val();
            if (!listing_city) {
                warning('Listing city is required');
            }
            var listing_address = $("#list_address").val();
            if (!listing_address) {
                warning('Listing address is required');
            }
            var listing_latitude = $("#latitude").val();
            if (!listing_latitude) {
                warning('Listing latitude is required');
            }
            var listing_longitude = $("#longitude").val();
            if (!listing_longitude) {
                warning('Listing longitude is required');
            }
            var listing_post_code = $("#post_code").val();
            if (!listing_post_code) {
                warning('Listing post code is required');
            }


            if (listing_category && listing_title && listing_description && listing_visibility && listing_country && listing_city && listing_address && listing_latitude && listing_longitude && listing_post_code) {
                $("#form-action").trigger('submit');
            }
        });

        
        document.getElementById('listing-icon-image').addEventListener('change', function(event) {
        const imageContainer = document.getElementById('image-container');
        const files = event.target.files;

        for (const file of files) {
            const reader = new FileReader();
            
            reader.onload = function(e) {
                const imageIcon = document.createElement('div');
                imageIcon.classList.add('image-icon');
                
                const img = document.createElement('img');
                img.src = e.target.result;
                img.alt = 'Selected image';
                
                const trashIcon = document.createElement('i');
                trashIcon.classList.add('fas', 'fa-trash-alt');
                trashIcon.addEventListener('click', function() {
                    imageIcon.remove();
                });

                imageIcon.appendChild(img);
                imageIcon.appendChild(trashIcon);
                imageContainer.appendChild(imageIcon);
            }
            
            reader.readAsDataURL(file);
        }
    }); 

    </script>

@endsection
