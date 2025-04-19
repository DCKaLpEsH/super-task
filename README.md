# dailoz_app

### Add Colors to the xml file in assets folder and run the build command
### Generate asset path using following command :
    `dart run build_runner build`

### Website to name colors, if needed.
```
https://chir.ag/projects/name-that-color/
```
    

### Using Clean Architecture


### Export all files in their respective barrel files.

### Create new feature

Run the following command

```bash
    mkdir -p common/constants common/extensions common/screenutil \
    data/core data/data_sources data/models data/repositories \
    di domain/entities domain/repositories domain/usecases \
    presentation/blocs presentation/journeys presentation/themes presentation/widgets
```

### Git Branching 
The branches are named as per their development stage and then by a feature name.\
For ex. ui/auth, here ui is the development stage and auth is the feature name.

Below you can find the list of all possible development stages -\
**ui** - when only the ui is being developed for a particular feature\
**feature** - when the api integration and logic is being done\
**bug** - when a bug is being fixed.