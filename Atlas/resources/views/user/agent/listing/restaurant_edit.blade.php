@extends('layouts.frontend')
@push('title', get_phrase('Update Listing'))
@push('meta')@endpush
@section('frontend_layout')
    @php
        $tab = isset($tab) ? $tab : '';
    @endphp
    <style>
        .possition_relative {
            position: relative;
            margin-right: 15px;
            margin-top: 11px;
        }

        .possition_relative i {
            position: absolute;
            top: -12px;
            right: -10px;
            color: #fff;
            background-color: red;
            padding: 7px;
            cursor: pointer;
            border-radius: 50px;
            font-size: 12px;
        }

        .feature-body .card-body {
            width: 139px;
            font-size: 14px;
        }

        .team-checkbox .team-body .checked {
            position: absolute;
            top: 7px;
            right: 12px;
        }

        .real-estate-feature {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
        }

        .object-fit {
            object-fit: cover;
        }

        .team-checkbox img {
            width: 100px;
            height: 100%;
        }
    </style>

    <section class="mb-90px mt-4">
        <div class="container">
            <div class="row gx-20px">
                <div class="col-lg-4 col-xl-3">
                    @include('user.navigation')
                </div>
                <div class="col-lg-8 col-xl-9">
                    <!-- Header -->
                    <div class="d-flex align-items-start justify-content-between gap-2 mb-20px">
                        <div class="d-flex justify-content-between align-items-start gap-12px flex-column flex-lg-row w-100">
                            <h1 class="ca-title-18px">{{ get_phrase('Update') . ' ' . ucwords($listing->type) . ' ' . get_phrase('Listing') }}</h1>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb cap-breadcrumb">
                                    <li class="breadcrumb-item cap-breadcrumb-item"><a href="{{ route('home') }}">{{ get_phrase('Home') }}</a></li>
                                    <li class="breadcrumb-item cap-breadcrumb-item active" aria-current="page">{{ get_phrase('Booking') }}</li>
                                </ol>
                            </nav>
                        </div>
                        <button class="btn ca-menu-btn-primary d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#user-sidebar-offcanvas" aria-controls="user-sidebar-offcanvas">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M21 5.25H3C2.59 5.25 2.25 4.91 2.25 4.5C2.25 4.09 2.59 3.75 3 3.75H21C21.41 3.75 21.75 4.09 21.75 4.5C21.75 4.91 21.41 5.25 21 5.25Z" fill="#242D47" />
                                <path d="M21 10.25H3C2.59 10.25 2.25 9.91 2.25 9.5C2.25 9.09 2.59 8.75 3 8.75H21C21.41 8.75 21.75 9.09 21.75 9.5C21.75 9.91 21.41 10.25 21 10.25Z" fill="#242D47" />
                                <path d="M21 15.25H3C2.59 15.25 2.25 14.91 2.25 14.5C2.25 14.09 2.59 13.75 3 13.75H21C21.41 13.75 21.75 14.09 21.75 14.5C21.75 14.91 21.41 15.25 21 15.25Z" fill="#242D47" />
                                <path d="M21 20.25H3C2.59 20.25 2.25 19.91 2.25 19.5C2.25 19.09 2.59 18.75 3 18.75H21C21.41 18.75 21.75 19.09 21.75 19.5C21.75 19.91 21.41 20.25 21 20.25Z" fill="#242D47" />
                            </svg>
                        </button>
                    </div>
                    <div class="ca-content-card p-4 position-relative">
                        <ul class="nav nav-pills cap-nav-pills mb-20px" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link {{ $tab == 'basic' ? 'active' : '' }}" id="pills-basic-info-tab" data-bs-toggle="pill" data-bs-target="#pills-basic-info" type="button" role="tab" aria-controls="pills-basic-info" aria-selected="true">{{ get_phrase('Basic Info') }}</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-open-time-tab" data-bs-toggle="pill" data-bs-target="#pills-open-time" type="button" role="tab" aria-controls="pills-address" aria-selected="false">{{ get_phrase('Opening Time') }}</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link {{ $tab == 'menu' ? 'active' : '' }}" id="pills-menu-tab" data-bs-toggle="pill" data-bs-target="#pills-menu" type="button" role="tab" aria-controls="pills-menu" aria-selected="false">{{ get_phrase('Menu') }}</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-feature-tab" data-bs-toggle="pill" data-bs-target="#pills-feature" type="button" role="tab" aria-controls="pills-feature" aria-selected="false">{{ get_phrase('Feature') }}</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-address-tab" data-bs-toggle="pill" data-bs-target="#pills-address" type="button" role="tab" aria-controls="pills-address" aria-selected="false">{{ get_phrase('Address') }}</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-seo-tab" data-bs-toggle="pill" data-bs-target="#pills-seo" type="button" role="tab" aria-controls="pills-seo" aria-selected="false">{{ get_phrase('Seo') }}</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-media-tab" data-bs-toggle="pill" data-bs-target="#pills-media" type="button" role="tab" aria-controls="pills-media" aria-selected="false">{{ get_phrase('Media') }}</button>
                            </li>
                        </ul>
                        <div class="subMit eSubmit">
                            <button type="submit" id="form-action-btn" class="cap2-btn-primary cap-btn-sm gap-1"> {{ get_phrase('Update') }} </button>
                        </div>
                        <form action="{{ route('user.listing.update', ['type' => 'restaurant', 'id' => $listing->id]) }}" id="form-action" method="post" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="is_agent" value="1">
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show {{ $tab == 'basic' ? 'active' : '' }}" id="pills-basic-info" role="tabpanel" aria-labelledby="pills-basic-info-tab" tabindex="0">
                                    <div class="mb-2">
                                        <label for="title" class="form-label cap-form-label"> {{ get_phrase('Listing title') }} *</label>
                                        <input type="text" name="title" id="title" class="form-control cap-form-control" value="{{ $listing->title }}" placeholder="{{ get_phrase('Enter listing title') }}">
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="mb-2">
                                                <label for="category" class="form-label cap-form-label"> {{ get_phrase('category') }} *</label>
                                                <select name="category" id="category" class="at-select2 cap-select2 select2-hidden-accessible" data-select2-id="select2-data-1-2ry6" tabindex="-1" aria-hidden="true">
                                                    <option value=""> {{ get_phrase('Select listing category') }} </option>
                                                    @foreach ($categories as $category)
                                                        <option value="{{ $category->id }}" {{ $listing->category == $category->id ? 'selected' : '' }}> {{ $category->name }} </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="mb-2">
                                                <label for="visibility" class="form-label cap-form-label"> {{ get_phrase('Visibility') }} *</label>
                                                <select name="visibility" id="visibility" class="at-select2 cap-select2 select2-hidden-accessible" data-select2-id="select2-data-1-2ry6v" tabindex="-1" aria-hidden="true">
                                                    <option value=""> {{ get_phrase('Select listing visibility') }} </option>
                                                    <option value="visible" {{ $listing->visibility == 'visible' ? 'selected' : '' }}> {{ get_phrase('Visible') }} </option>
                                                    <option value="disable" {{ $listing->visibility == 'disable' ? 'selected' : '' }}> {{ get_phrase('Disable') }} </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="mb-2">
                                                <label for="is_popular" class="form-label cap-form-label"> {{ get_phrase('Type') }} *</label>
                                                <select name="is_popular" id="is_popular" class="at-select2 cap-select2 select2-hidden-accessible">
                                                    <option value=""> {{ get_phrase('Select Type') }} </option>
                                                    <option value="featured" {{ $listing->is_popular == 'featured' ? 'selected' : '' }}> {{ get_phrase('Featured') }} </option>
                                                    <option value="trending" {{ $listing->is_popular == 'trending' ? 'selected' : '' }}> {{ get_phrase('Trending') }} </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="mb-2">
                                                <label for="description" class="form-label cap-form-label"> {{ get_phrase('Description') }} </label>
                                                <textarea name="description" id="description" cols="30" rows="3" placeholder="{{ get_phrase('Write your description') }}" class="form-control cap-form-control">{!! removeScripts($listing->description) !!}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="mb-2">
                                                <label for="latitude" class="form-label cap-form-label"> {{ get_phrase('Latitude') }} *</label>
                                                <input type="text" name="latitude" id="latitude" class="form-control cap-form-control" placeholder="{{ get_phrase('Enter Latitude code') }}" value="{{ $listing->Latitude }}">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="mb-2">
                                                <label for="longitude" class="form-label cap-form-label"> {{ get_phrase('Longitude') }} *</label>
                                                <input type="text" name="longitude" id="longitude" class="form-control cap-form-control" placeholder="{{ get_phrase('Enter longitude code') }}" value="{{ $listing->Longitude }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-3">
                                        <link rel="stylesheet" href="{{ asset('assets/backend/css/leaflet.css') }}">
                                        <script src="{{ asset('assets/backend/js/leaflet.js') }}"></script>
                                        <div id="map" class="rounded h-400"></div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-open-time" role="tabpanel" aria-labelledby="pills-open-time-tab" tabindex="0">
                                    <div class="row justify-content-center fs-14px">
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

                                                    <select name="{{ $key }}_open" id="{{ $key }}}_open" class="at-select2 cap-select2 select2-hidden-accessible" data-select2-id="select2-data-1-2ry{{ $key }}" tabindex="-1" aria-hidden="true">
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
                                                    <label for="{{ $key }}_close" class="form-label ol-form-label"> {{ ucwords($key) . ' ' . get_phrase('closing') }} </label>
                                                    <select name="{{ $key }}_close" id="{{ $key }}}_close" class="at-select2 cap-select2 select2-hidden-accessible" data-select2-id="select2-data-1-2ry6{{ $key }}" tabindex="-1" aria-hidden="true">

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
                                <div class="tab-pane fade show {{ $tab == 'menu' ? 'active' : '' }}" id="pills-menu" role="tabpanel" aria-labelledby="pills-menu-tab" tabindex="0">
                                    <div class="d-flex align-items-center justify-content-between mb-2">
                                        <h5 class="fs-16px title mb-3"> {{ get_phrase('Add some menu for restaurant') }} </h5>
                                        <a href="javascript:void(0)" onclick="modal('modal-md', '{{ route('admin.add.listing.menu', ['prefix' => 'agent', 'id' => $listing->id]) }}', '{{ get_phrase('Add New Menu') }}')" class="btn btn-primary"> {{ get_phrase('Add menu') }} </a>
                                    </div>
                                    @php
                                        $menus = App\Models\Menu::where('listing_id', $listing->id)->get();
                                    @endphp
                                    <div class="row">
                                        @foreach ($menus as $key => $menu)
                                            <div class="col-sm-4">
                                                <input class="form-check-input d-none" name="menu[]" type="checkbox" value="{{ $menu->id }}" id="flexCheckDefault{{ $key }}" @if ($listing->menu && $listing->menu != 'null' && in_array($menu->id, json_decode($listing->menu))) checked @endif>
                                                <label class="form-check-label w-100" onclick="menu_select('{{ $key }}')" for="flexCheckDefault{{ $key }}">
                                                    <div class="card mb-3 team-checkbox">
                                                        <div class="row g-0">
                                                            <div class="col-md-4">
                                                                <img class="h-88 object-fit" src="{{ get_all_image('menu/' . $menu->image) }}" height="50" width="50" class="img-fluid rounded-start" alt="...">
                                                            </div>
                                                            <div class="col-md-8 team-body">
                                                                <div class="card-body py-0 px-2 position-relative fs-14px">
                                                                    <p class="card-title mb-0 mt-2 line-1"> {{ $menu->title }} </p>
                                                                    <p class="card-text line-1"> {{ $menu->sub_title }} </p>
                                                                    <p class="card-text">
                                                                        @if ($menu->dis_price)
                                                                            <del> {{ currency($menu->price) }} </del>
                                                                            <span> {{ currency($menu->dis_price) }} </span>
                                                                        @else
                                                                            <span> {{ currency($menu->price) }} </span>
                                                                        @endif
                                                                    </p>
                                                                    <div class="text-end position-absulate">
                                                                        <a data-bs-toggle="tooltip" data-bs-title="{{ get_phrase('edit') }}" href="javascript:void(0);" onclick="modal('modal-md', '{{ route('admin.edit.listing.menu', ['prefix' => 'agent', 'id' => $menu->id, 'listing_id' => $listing->id, 'page' => 'edit']) }}', '{{ get_phrase('Update Menu') }}')" class="p-1"> <i class="fas fa-edit"></i> </a>

                                                                        <a data-bs-toggle="tooltip" data-bs-title="{{ get_phrase('delete') }}" href="javascript:void(0);" onclick="delete_modal('{{ route('admin.delete.listing.menu', ['prefix' => 'agent', 'id' => $menu->id, 'listing_id' => $listing->id]) }}')" class="p-1"> <i class="fas fa-trash-alt"></i> </a>
                                                                    </div>
                                                                </div>
                                                                <div class="checked @if ($listing->menu && $listing->menu != 'null' && in_array($menu->id, json_decode($listing->menu))) @else d-none @endif" id="menu-checked{{ $key }}">
                                                                    <i class="fas fa-check"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </label>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-feature" role="tabpanel" aria-labelledby="pills-feature-tab" tabindex="0">
                                    <div class="d-flex align-items-center justify-content-between mb-3">
                                        <h5 class="fs-16px title mb-3"> {{ get_phrase('Add some feature') }} </h5>
                                    </div>
                                    @php
                                        $features = App\Models\Amenities::where('type', 'restaurant')->where('identifier', 'feature')->get();
                                    @endphp
                                    <div class="real-estate-feature">
                                        @foreach ($features as $key => $amenities)
                                            <div class="feature-item">
                                                <input class="form-check-input d-none" name="feature[]" type="checkbox" value="{{ $amenities->id }}" id="flexCheckDefau{{ $key }}" @if ($listing->amenities && $listing->amenities != 'null' && in_array($amenities->id, json_decode($listing->amenities))) checked @endif>
                                                <label class="form-check-label w-100" onclick="feature_select('{{ $key }}')" for="flexCheckDefau{{ $key }}">
                                                    <div class="card mb-3 team-checkbox me-2">
                                                        <div class="col-md-12 team-body feature-body">
                                                            <div class="card-body py-2 px-2 ms-1">

                                                                <div class="icon_s">
                                                                    <img src="{{ asset($amenities->image ? '/' . $amenities->image : 'image/placeholder.png') }}" alt="" class="rounded">
                                                                </div>
                                                                <span class="text-center d-block w-100"> {{ $amenities->name }} </span>
                                                            </div>
                                                            <div class="checked @if ($listing->amenities && $listing->amenities != 'null' && in_array($amenities->id, json_decode($listing->amenities))) @else d-none @endif" id="feature-checked{{ $key }}">
                                                                <i class="fas fa-check"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </label>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-address" role="tabpanel" aria-labelledby="pills-address-tab" tabindex="0">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="mb-2">
                                                <label for="engine_size" class="form-label cap-form-label"> {{ get_phrase('Country') }} *</label>
                                                <select name="country" id="country" class="at-select2 cap-select2 select2-hidden-accessible" data-select2-id="select2-data-1-2ry6co" tabindex="-1" aria-hidden="true">

                                                    <option value=""> {{ get_phrase('Select listing country') }} </option>
                                                    @foreach (App\Models\Country::get() as $country)
                                                        <option value="{{ $country->id }}" {{ $listing->country == $country->id ? 'selected' : '' }}> {{ get_phrase($country->name) }} </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="mb-2">
                                                <label for="city" class="form-label cap-form-label"> {{ get_phrase('City') }} *</label>
                                                <select name="city" id="city" class="at-select2 cap-select2 select2-hidden-accessible" data-select2-id="select2-data-1-2ry6ci" tabindex="-1" aria-hidden="true">
                                                    <option value="{{ $listing->city }}"> {{ App\Models\City::where('id', $listing->city)->first()?->name }} </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-2">
                                        <label for="address" class="form-label cap-form-label"> {{ get_phrase('Address') }} *</label>
                                        <textarea name="address" id="address" cols="30" rows="3" class="form-control cap-form-control" placeholder="{{ get_phrase('Enter listing address') }}">{{ $listing->address }}</textarea>
                                    </div>

                                    <div class="mb-2">
                                        <label for="post_code" class="form-label cap-form-label"> {{ get_phrase('Post Code') }} *</label>
                                        <input type="text" name="post_code" id="post_code" class="form-control cap-form-control" value="{{ $listing->postal_code }}" placeholder="{{ get_phrase('Enter post code') }}">
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-seo" role="tabpanel" aria-labelledby="pills-seo-tab" tabindex="0">
                                    <div class="mb-2">
                                        <label for="meta_title" class="form-label cap-form-label"> {{ get_phrase('Meta Title') }}</label>
                                        <input type="text" name="meta_title" id="meta_title" class="form-control cap-form-control" value={{ $listing->meta_title }} placeholder="{{ get_phrase('Enter meta title') }}">
                                    </div>
                                    <div class="mb-2">
                                        <label for="keyword" class="form-label cap-form-label"> {{ get_phrase('Meta keywords') }}</label>
                                        <input type="text" name="keyword" id="keyword" class="form-control cap-form-control" value="{{ $listing->meta_keyword }}" placeholder="{{ get_phrase('Keyword1; keyword2; keyword3;') }}">
                                    </div>
                                    <div class="mb-2">
                                        <label for="meta_description" class="form-label cap-form-label"> {{ get_phrase('Meta Description') }} </label>
                                        <textarea name="meta_description" id="meta_description" cols="30" rows="3" class="form-control cap-form-control" placeholder="{{ get_phrase('Enter meta description') }}">{{ $listing->meta_description }}</textarea>
                                    </div>
                                    <div class="mb-2">
                                        <label for="og_title" class="form-label cap-form-label"> {{ get_phrase('OG title') }}</label>
                                        <input type="text" name="og_title" id="og_title" class="form-control cap-form-control" value="{{ $listing->og_title }}" placeholder="{{ get_phrase('Enter og title') }}">
                                    </div>
                                    <div class="mb-2">
                                        <label for="canonical_url" class="form-label cap-form-label"> {{ get_phrase('Canonical URL') }}</label>
                                        <input type="text" name="canonical_url" id="canonical_url" class="form-control cap-form-control" placeholder="{{ get_phrase('Enter canonical URL') }}" value="{{ $listing->canonical_url }}">
                                    </div>
                                    <div class="mb-2">
                                        <label for="og_description" class="form-label cap-form-label"> {{ get_phrase('OG Description') }} </label>
                                        <textarea name="og_description" id="og_description" cols="30" rows="3" class="form-control cap-form-control" placeholder="{{ get_phrase('Enter meta description') }}">{!! removeScripts($listing->og_description) !!}</textarea>
                                    </div>
                                    <div class="mb-2">
                                        <label for="json_id" class="form-label cap-form-label"> {{ get_phrase('Json ID') }}</label>
                                        <input type="text" name="json_id" id="json_id" class="form-control cap-form-control" value="{{ $listing->json_id }}" placeholder="{{ get_phrase('Enter json ID') }}">
                                    </div>
                                    <div class="mb-2">
                                        <label for="og_image" class="form-label cap-form-label"> {{ get_phrase('OG Image') }}</label>
                                        <input type="file" name="og_image" id="og_image" class="form-control cap-form-control">
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-media" role="tabpanel" aria-labelledby="pills-media-tab" tabindex="0">
                                    <div class="row mb-2">
                                        <div class="col-sm-3">
                                            <label class="form-label cap-form-label"> {{ get_phrase('Listing Images') }} :</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <div class="d-flex flex-wrap">
                                                <!-- Image previews will be dynamically added here -->
                                                @foreach (json_decode($listing->image) as $key => $image)
                                                    <div class="possition_relative" id="image-icon{{ $key }}">
                                                        <img class="object-fit rounded" src="{{ get_all_image('listing-images/' . $image) }}" class="rounded" height="50" width="50">
                                                        <input type="hidden" name="listing_image[]" value="{{ $image }}">
                                                        <a href="javascript:void(0);" onclick="listing_image_delete('{{ route('user.listing.image.delete', ['type' => $listing->type, 'id' => $listing->id, 'image' => $image]) }}', '{{ $key }}')"> <i data-bs-toggle="tooltip" data-bs-title="{{ get_phrase('delete') }}" class="fas fa-times"></i> </a>
                                                    </div>
                                                @endforeach
                                                <div class="d-flex flex-wrap" id="image-container"></div>
                                            </div>

                                            <div class="upload__box mt-3">
                                                <div class="upload__img-wrap"></div>
                                                <div class="upload__btn-box">
                                                    <label class="upload__btn">
                                                        <div class="d-flex justify-content-center mb-2">
                                                            <img src="{{ asset('assets/frontend/images/icons/cloud-minus-32.svg') }}" alt="">
                                                        </div>
                                                        <p class="upload-btn-subtitle">{{ get_phrase('Upload Product Image') }}</p>
                                                        <input type="file" name="listing_image[]" multiple data-max_length="20" class="upload__inputfile" id="image-input">
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    @include('user.agent.listing.script')
    @include('layouts.modal')
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
            var listing_country = $("#country").val();
            if (!listing_country) {
                warning('Listing country is required');
            }
            var listing_city = $("#city").val();
            if (!listing_city) {
                warning('Listing city is required');
            }
            var listing_address = $("#address").val();
            if (!listing_address) {
                warning('Listing address is required');
            }
            var listing_post_code = $("#post_code").val();
            if (!listing_post_code) {
                warning('Listing post code is required');
            }
            var listing_latitude = $("#latitude").val();
            if (!listing_latitude) {
                warning('Listing latitude is required');
            }
            var listing_longitude = $("#longitude").val();
            if (!listing_longitude) {
                warning('Listing longitude is required');
            }
            var listing_visibility = $("#visibility").val();
            if (!listing_visibility) {
                warning('Listing visibility is required');
            }
            if (listing_title && listing_category && listing_country && listing_city && listing_address && listing_post_code && listing_latitude && listing_longitude && listing_visibility) {
                $("#form-action").trigger('submit');
            }

        })
    </script>
@endsection
