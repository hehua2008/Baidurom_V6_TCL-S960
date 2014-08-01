.class Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;
.super Ljava/lang/Object;
.source "JrdAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/powersaver/JrdAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field appId:I

.field checked:Z

.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/jrdsettings/powersaver/JrdAppPicker;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/powersaver/JrdAppPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->this$0:Lcom/android/jrdsettings/powersaver/JrdAppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    if-ne p1, p0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    instance-of v3, p1, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 251
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 252
    check-cast v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;

    .line 253
    .local v0, s:Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;
    iget-object v3, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 256
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
