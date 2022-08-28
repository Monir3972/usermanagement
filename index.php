<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User || Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
  </head>
  <body>
    <div class="container mt-3">
      <div class="row">
        <div class="col-md-8 mx-auto">
          <div class="card rounded-0">
            <div class="card-body">
               <form action="" method="post" id="add_user">
                <div class="row g-3">
                  <div class="col">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control form-select-sm" id="name" name="name">
                  </div>
                   <div class="col">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control form-select-sm" id="email" name="email">
                  </div>
                   <div class="col">
                    <label for="contact" class="form-label">Contact</label>
                    <input type="text" class="form-control form-select-sm" id="contact" name="contact">
                  </div>
                </div>
                <div class="row g-3">
                  <div class="col">
                    <label for="country" class="form-label">Country</label>
                    <select class="form-select form-select-sm js-example-basic-single" name="country" id="country">
                    
                   </select>
                  </div>
                   <div class="col">
                     <label for="district" class="form-label">Division</label>
                    <select class="form-select form-select-sm js-example-basic-single" id="division" name="division">
                      <option selected>Select</option>
                   </select>
                  </div>
                  <div class="col">
                     <label for="district" class="form-label">District</label>
                    <select class="form-select form-select-sm js-example-basic-single" id="district" name="district">
                      <option selected>Select</option>
                   </select>
                  </div>
                   <div class="col">
                     <label for="upzilla" class="form-label">Upzilla</label>
                    <select class="form-select form-select-sm js-example-basic-single" id="upzilla" name="upzilla">
                      <option selected>select</option>
                   </select>
                  </div>
                </div><br>
                <div class="row g-3">
                  <div class="col">
                     <label for="pos" class="form-label">Post Office</label>
                    <select class="form-select form-select-sm js-example-basic-single" id="post_office" name="post_office">
                      <option selected>Select</option>
                   </select>
                  </div>
                    <div class="col">
                     <label for="word" class="form-label">Word</label>
                    <select class="form-select form-select-sm js-example-basic-single" id="word" name="word">
                      <option selected>Select</option>
                   </select>
                  </div>
                    <div class="col">
                     <label for="village" class="form-label">Village</label>
                    <select class="form-select form-select-sm js-example-basic-single" id="village" name="village">
                      <option selected>Select</option>
                   </select>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary btn-sm mt-3 float-end">Submit</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-3">
        <div class="col-md-8 mx-auto">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Contact</th>
                <th scope="col">Country</th>
               <!--  <th scope="col">Division</th> -->
                <th scope="col">District</th>
                <th scope="col">Upzilla</th>
                <!-- <th scope="col">Post Office</th> -->
                <th scope="col">Village</th>
                <th scope="col">Ward</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody class="userdata" id="userdata">
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Mark</td>
                <td>Otto</td>
              </tr>
              <tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script type="text/javascript" src="assets/js/profile.js"></script>
     <script type="text/javascript">
        $(document).ready(function() {
        $('.js-example-basic-single').select2();
      });
    </script>
  </body>
</html>