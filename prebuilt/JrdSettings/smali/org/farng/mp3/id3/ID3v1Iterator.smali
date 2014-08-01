.class public Lorg/farng/mp3/id3/ID3v1Iterator;
.super Ljava/lang/Object;
.source "ID3v1Iterator.java"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final ALBUM:I = 0x3

.field private static final ARTIST:I = 0x2

.field private static final COMMENT:I = 0x4

.field private static final GENRE:I = 0x6

.field private static final TITLE:I = 0x1

.field private static final TRACK:I = 0x7

.field private static final YEAR:I = 0x5


# instance fields
.field private id3v1tag:Lorg/farng/mp3/id3/ID3v1;

.field private lastIndex:I


# direct methods
.method public constructor <init>(Lorg/farng/mp3/id3/ID3v1;)V
    .locals 1
    .parameter "id3v1tag"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->lastIndex:I

    .line 28
    iput-object p1, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    .line 29
    return-void
.end method

.method private hasNext(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    packed-switch p1, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 63
    :pswitch_0
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 65
    :pswitch_1
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 71
    :pswitch_4
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .line 73
    :pswitch_5
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    if-gez v0, :cond_7

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    .line 75
    :pswitch_6
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    instance-of v0, v0, Lorg/farng/mp3/id3/ID3v1_1;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    check-cast v0, Lorg/farng/mp3/id3/ID3v1_1;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    if-gez v0, :cond_8

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    move v1, v2

    goto/16 :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private next(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 84
    iget v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->lastIndex:I

    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration has no more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 98
    :goto_0
    return-object v0

    .line 86
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_4
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-object v0, v0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    goto :goto_0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_5
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    if-ltz v0, :cond_5

    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iget-byte v1, v1, Lorg/farng/mp3/id3/ID3v1;->genre:B

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_6
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    instance-of v0, v0, Lorg/farng/mp3/id3/ID3v1_1;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    check-cast v0, Lorg/farng/mp3/id3/ID3v1_1;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    if-ltz v0, :cond_6

    new-instance v1, Ljava/lang/Byte;

    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    check-cast v0, Lorg/farng/mp3/id3/ID3v1_1;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    invoke-direct {v1, v0}, Ljava/lang/Byte;-><init>(B)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->lastIndex:I

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->lastIndex:I

    invoke-direct {p0, v0}, Lorg/farng/mp3/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 40
    iget v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->lastIndex:I

    packed-switch v0, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    const-string v1, ""

    iput-object v1, v0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 44
    :pswitch_1
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    const-string v1, ""

    iput-object v1, v0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 46
    :pswitch_2
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    const-string v1, ""

    iput-object v1, v0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 48
    :pswitch_3
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    const-string v1, ""

    iput-object v1, v0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 50
    :pswitch_4
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    const-string v1, ""

    iput-object v1, v0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 52
    :pswitch_5
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    iput-byte v2, v0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 54
    :pswitch_6
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    instance-of v0, v0, Lorg/farng/mp3/id3/ID3v1_1;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1Iterator;->id3v1tag:Lorg/farng/mp3/id3/ID3v1;

    check-cast v0, Lorg/farng/mp3/id3/ID3v1_1;

    iput-byte v2, v0, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
