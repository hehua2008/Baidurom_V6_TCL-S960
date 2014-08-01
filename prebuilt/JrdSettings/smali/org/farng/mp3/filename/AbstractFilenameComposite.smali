.class public abstract Lorg/farng/mp3/filename/AbstractFilenameComposite;
.super Ljava/lang/Object;
.source "AbstractFilenameComposite.java"


# instance fields
.field private originalToken:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/filename/AbstractFilenameComposite;->originalToken:Ljava/lang/String;

    .line 27
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/filename/AbstractFilenameComposite;->originalToken:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lorg/farng/mp3/filename/AbstractFilenameComposite;->originalToken:Ljava/lang/String;

    iput-object v0, p0, Lorg/farng/mp3/filename/AbstractFilenameComposite;->originalToken:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public abstract composeFilename()Ljava/lang/String;
.end method

.method public abstract createId3Tag()Lorg/farng/mp3/id3/ID3v2_4;
.end method

.method public getOriginalToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/farng/mp3/filename/AbstractFilenameComposite;->originalToken:Ljava/lang/String;

    return-object v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract matchAgainstKeyword(Ljava/lang/Class;)V
.end method

.method public abstract matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V
.end method

.method public abstract setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
.end method

.method public setOriginalToken(Ljava/lang/String;)V
    .locals 0
    .parameter "originalToken"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/farng/mp3/filename/AbstractFilenameComposite;->originalToken:Ljava/lang/String;

    .line 78
    return-void
.end method
