.class public Lorg/farng/mp3/filename/FilenameStartWordDelimiter;
.super Lorg/farng/mp3/filename/FilenameDelimiter;
.source "FilenameStartWordDelimiter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/filename/FilenameStartWordDelimiter;)V
    .locals 0
    .parameter "delimiter"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/farng/mp3/filename/FilenameDelimiter;-><init>(Lorg/farng/mp3/filename/FilenameDelimiter;)V

    .line 23
    return-void
.end method


# virtual methods
.method public composeFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 32
    .local v0, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getBeforeComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->composeFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    :cond_0
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameDelimiter;->getAfterComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->composeFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
