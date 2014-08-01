.class public Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# static fields
.field private static final OPTIONS_MENU_DELETE:I = 0x1


# instance fields
.field private mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 5

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    .local v2, localesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    iget-object v3, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0b0238

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 115
    .local v1, localeSpinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 117
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 118
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 119
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 63
    .local v0, ctx:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 64
    const-string v2, "InputMethod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated input manager "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_0

    const-string v1, "is"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 64
    :cond_0
    const-string v1, "is not"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 79
    const/4 v1, 0x1

    const v2, 0x7f090831

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 81
    .local v0, actionItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 69
    const v0, 0x7f0400db

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 71
    iget-object v0, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 143
    .local v0, locale:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    invoke-virtual {v0}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 149
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    new-instance v2, Lcom/android/jrdsettings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/preference/PreferenceActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 153
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 167
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, args:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 96
    iput-boolean v0, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 97
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 126
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 127
    .local v0, autoHide:Z
    if-eqz v0, :cond_0

    .line 128
    const-string v2, "InputMethod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause input manager "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_2

    const-string v1, "is"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 134
    :cond_0
    iget-boolean v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    .line 137
    :cond_1
    return-void

    .line 128
    :cond_2
    const-string v1, "is not"

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 107
    invoke-direct {p0}, Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    .line 108
    return-void
.end method
