.class public abstract Lorg/farng/mp3/AbstractMP3Fragment;
.super Lorg/farng/mp3/AbstractMP3FileItem;
.source "AbstractMP3Fragment.java"


# instance fields
.field private body:Lorg/farng/mp3/AbstractMP3FragmentBody;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3FileItem;-><init>()V

    .line 23
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/AbstractMP3Fragment;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;-><init>(Lorg/farng/mp3/AbstractMP3FileItem;)V

    .line 38
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    .line 39
    .local v0, copyObjectBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/AbstractMP3FragmentBody;

    iput-object v1, p0, Lorg/farng/mp3/AbstractMP3Fragment;->body:Lorg/farng/mp3/AbstractMP3FragmentBody;

    .line 40
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/AbstractMP3FragmentBody;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3FileItem;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/farng/mp3/AbstractMP3Fragment;->body:Lorg/farng/mp3/AbstractMP3FragmentBody;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    .line 99
    instance-of v6, p1, Lorg/farng/mp3/AbstractMP3Fragment;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 100
    check-cast v0, Lorg/farng/mp3/AbstractMP3Fragment;

    .line 101
    .local v0, abstractMP3Fragment:Lorg/farng/mp3/AbstractMP3Fragment;
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3FileItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, equalsIdentifier:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3FileItem;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, thisIdentifier:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    .line 105
    .local v2, equalsBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v4

    .line 106
    .local v4, thisBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    invoke-virtual {v4, v2}, Lorg/farng/mp3/AbstractMP3FragmentBody;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 117
    .end local v0           #abstractMP3Fragment:Lorg/farng/mp3/AbstractMP3Fragment;
    .end local v2           #equalsBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    .end local v3           #equalsIdentifier:Ljava/lang/String;
    .end local v4           #thisBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    .end local v5           #thisIdentifier:Ljava/lang/String;
    .local v1, equals:Z
    :goto_0
    return v1

    .line 109
    .end local v1           #equals:Z
    .restart local v0       #abstractMP3Fragment:Lorg/farng/mp3/AbstractMP3Fragment;
    .restart local v2       #equalsBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    .restart local v3       #equalsIdentifier:Ljava/lang/String;
    .restart local v4       #thisBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    .restart local v5       #thisIdentifier:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #equals:Z
    goto :goto_0

    .line 112
    .end local v1           #equals:Z
    .end local v2           #equalsBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    .end local v4           #thisBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #equals:Z
    goto :goto_0

    .line 115
    .end local v0           #abstractMP3Fragment:Lorg/farng/mp3/AbstractMP3Fragment;
    .end local v1           #equals:Z
    .end local v3           #equalsIdentifier:Ljava/lang/String;
    .end local v5           #thisIdentifier:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #equals:Z
    goto :goto_0
.end method

.method public getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/farng/mp3/AbstractMP3Fragment;->body:Lorg/farng/mp3/AbstractMP3FragmentBody;

    return-object v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    .line 70
    iget-object v0, p0, Lorg/farng/mp3/AbstractMP3Fragment;->body:Lorg/farng/mp3/AbstractMP3FragmentBody;

    .line 71
    .local v0, localBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    if-nez p1, :cond_0

    .line 72
    const/4 v1, 0x0

    .line 86
    .local v1, subsetOf:Z
    :goto_0
    return v1

    .line 73
    .end local v1           #subsetOf:Z
    :cond_0
    instance-of v3, p1, Lorg/farng/mp3/AbstractMP3Fragment;

    if-nez v3, :cond_1

    .line 74
    const/4 v1, 0x0

    .restart local v1       #subsetOf:Z
    goto :goto_0

    .end local v1           #subsetOf:Z
    :cond_1
    move-object v3, p1

    .line 76
    check-cast v3, Lorg/farng/mp3/AbstractMP3Fragment;

    invoke-virtual {v3}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    .line 77
    .local v2, superSetBody:Lorg/farng/mp3/AbstractMP3FragmentBody;
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 78
    const/4 v1, 0x1

    .restart local v1       #subsetOf:Z
    goto :goto_0

    .line 80
    .end local v1           #subsetOf:Z
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lorg/farng/mp3/AbstractMP3FragmentBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .restart local v1       #subsetOf:Z
    :goto_1
    goto :goto_0

    .end local v1           #subsetOf:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 48
    iput-object p1, p0, Lorg/farng/mp3/AbstractMP3Fragment;->body:Lorg/farng/mp3/AbstractMP3FragmentBody;

    .line 49
    return-void
.end method
