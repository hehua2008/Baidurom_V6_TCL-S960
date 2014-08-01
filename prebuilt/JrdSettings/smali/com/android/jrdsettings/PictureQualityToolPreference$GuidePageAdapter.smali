.class Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PictureQualityToolPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/PictureQualityToolPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GuidePageAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/PictureQualityToolPreference;)V
    .locals 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 194
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 232
    iget-object v2, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    iget-object v2, v2, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    const-string v3, "destroyItem called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p3

    .line 233
    check-cast v1, Landroid/widget/ImageView;

    .line 234
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 235
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    const/4 v0, 0x0

    .line 241
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 242
    iget-object v2, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mViewPager:Lcom/android/jrdsettings/ChildViewPager;
    invoke-static {v2}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$600(Lcom/android/jrdsettings/PictureQualityToolPreference;)Lcom/android/jrdsettings/ChildViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mViewPager:Lcom/android/jrdsettings/ChildViewPager;
    invoke-static {v2}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$600(Lcom/android/jrdsettings/PictureQualityToolPreference;)Lcom/android/jrdsettings/ChildViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mImages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$400(Lcom/android/jrdsettings/PictureQualityToolPreference;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    iget-object v3, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mViewPager:Lcom/android/jrdsettings/ChildViewPager;
    invoke-static {v3}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$600(Lcom/android/jrdsettings/PictureQualityToolPreference;)Lcom/android/jrdsettings/ChildViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    #setter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->current_pos:I
    invoke-static {v2, v3}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$502(Lcom/android/jrdsettings/PictureQualityToolPreference;I)I

    .line 245
    iget-object v2, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_item"

    iget-object v4, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->current_pos:I
    invoke-static {v4}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$500(Lcom/android/jrdsettings/PictureQualityToolPreference;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$400(Lcom/android/jrdsettings/PictureQualityToolPreference;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .parameter "container"
    .parameter "position"

    .prologue
    .line 198
    const-string v3, "bjzhang"

    const-string v4, "instantiateItem called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400aa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 201
    .local v2, imageView:Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 203
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mImages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$400(Lcom/android/jrdsettings/PictureQualityToolPreference;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    iget-object v5, v5, Lcom/android/jrdsettings/PictureQualityToolPreference;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    iget-object v4, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->mViewPager:Lcom/android/jrdsettings/ChildViewPager;
    invoke-static {v4}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$600(Lcom/android/jrdsettings/PictureQualityToolPreference;)Lcom/android/jrdsettings/ChildViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    #setter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->current_pos:I
    invoke-static {v3, v4}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$502(Lcom/android/jrdsettings/PictureQualityToolPreference;I)I

    .line 212
    iget-object v3, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_item"

    iget-object v5, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->current_pos:I
    invoke-static {v5}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$500(Lcom/android/jrdsettings/PictureQualityToolPreference;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    iget-object v3, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    iget-object v3, v3, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current_pos=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    #getter for: Lcom/android/jrdsettings/PictureQualityToolPreference;->current_pos:I
    invoke-static {v5}, Lcom/android/jrdsettings/PictureQualityToolPreference;->access$500(Lcom/android/jrdsettings/PictureQualityToolPreference;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-object v2

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/android/jrdsettings/PictureQualityToolPreference$GuidePageAdapter;->this$0:Lcom/android/jrdsettings/PictureQualityToolPreference;

    iget-object v3, v3, Lcom/android/jrdsettings/PictureQualityToolPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "child"
    .parameter "obj"

    .prologue
    .line 227
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
