@extends('layouts.app')

@section('content')
    <div class="row">
            <div class="container-fluid">
                <div class="col-lg-10">
                    <div class="box box-info">
                        <div class="box-header">
                            <h3 class="box-title">My Classes</h3>
                            <a href="{{ url('/admin') }}" class="small-box-footer">Home<i class="fa fa-arrow-circle-right"></i></a> <br>
                            <br>
                            <br>
                            <div class="pull-right">
                        </div>
                    </div>
                    <div class="box-body">
                        <table id="dbookSales" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Sr#</th>
                                    <th>Title</th>
                                    <th>Class Date</th>
                                    <th>Start Time</th>
                                    <th>End Time</th>
                                    <th>Description</th>
                                    <th>Teacher Description</th>
                                    <th>Course Name</th>
                                    <th>Start Class</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                @php $count=1; @endphp
                                @foreach($classes as $class)
                                    <td><span>{{ $count }}</span></td>
                                    <td>{{ $class->title }}</td>
                                    <td>{{ $class->date }}</td>
                                    <td>{{ $class->time_from }}</td>
                                    <td>{{ $class->time_to }}</td>
                                    <td>{{ $class->description }}</td>
                                    <td>{{ $class->teacher_description }}</td>
                                    <td>{{ $class->course_name }}</td>
                                    <td><a href="{{url('/chat-page')}}" type="button" class="btn btn-primary btn-sm">Start Class</a></td>
                                    {{--  <td><a href="{{url('/course-update-form/'.$course->id)}}" type="button" class="btn btn-primary btn-sm">Update</a></td>  --}}
                                
                                </tr>
                                @php $count++; @endphp
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        <div class="col-lg-2"></div>        
    </div>
@endsection
