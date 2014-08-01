.class public Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "JrdAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/powersaver/JrdAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageInfoList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/jrdsettings/powersaver/JrdAppPicker;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/powersaver/JrdAppPicker;Landroid/content/Context;)V
    .locals 9
    .parameter
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 271
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;->this$0:Lcom/android/jrdsettings/powersaver/JrdAppPicker;

    .line 272
    invoke-direct {p0, p2, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 269
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/HashSet;

    .line 273
    const-string v6, "layout_inflater"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 276
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    .local v4, mainIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 279
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkgs size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    if-nez v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v5, packagenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 286
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 287
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    #getter for: Lcom/android/jrdsettings/powersaver/JrdAppPicker;->hidePackageList:Ljava/util/List;
    invoke-static {p1}, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->access$000(Lcom/android/jrdsettings/powersaver/JrdAppPicker;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 285
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 290
    :cond_2
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v3, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;

    invoke-direct {v3, p1}, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;-><init>(Lcom/android/jrdsettings/powersaver/JrdAppPicker;)V

    .line 299
    .local v3, info:Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;
    iput-object v0, v3, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 301
    iget-object v6, v3, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 302
    iget-object v6, p1, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    iget-object v7, v3, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 303
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->checked:Z

    .line 306
    :cond_3
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 309
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #info:Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;
    :cond_4
    iget-object v6, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/HashSet;

    invoke-virtual {p0, v6}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 332
    if-nez p2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040080

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 339
    new-instance v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;

    invoke-direct {v0}, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;-><init>()V

    .line 340
    .local v0, holder:Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;
    const v2, 0x7f0b0120

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 341
    const v2, 0x7f0b0075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 342
    const v2, 0x7f0b0122

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 345
    const v2, 0x7f0b0121

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->switchbox:Landroid/widget/Switch;

    .line 346
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 354
    :goto_0
    iget-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->switchbox:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 355
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;

    .line 356
    .local v1, info:Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;
    iget-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->switchbox:Landroid/widget/Switch;

    iget-object v3, v1, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;->isInWhitelist(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 361
    iget-object v2, v1, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;->this$0:Lcom/android/jrdsettings/powersaver/JrdAppPicker;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :goto_1
    return-object p2

    .line 350
    .end local v0           #holder:Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;
    .end local v1           #info:Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;

    .restart local v0       #holder:Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;
    goto :goto_0

    .line 365
    .restart local v1       #info:Lcom/android/jrdsettings/powersaver/JrdAppPicker$MyApplicationInfo;
    :cond_1
    iget-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v2, v0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;->appSize:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isInWhitelist(Ljava/lang/String;)Z
    .locals 2
    .parameter "packagename"

    .prologue
    const/4 v0, 0x0

    .line 313
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppListAdapter;->this$0:Lcom/android/jrdsettings/powersaver/JrdAppPicker;

    iget-object v1, v1, Lcom/android/jrdsettings/powersaver/JrdAppPicker;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const/4 v0, 0x1

    goto :goto_0
.end method
