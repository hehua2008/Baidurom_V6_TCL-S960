.class public Lcom/android/jrdsettings/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "UserDictionaryLocalePicker.java"


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 25
    return-void
.end method
