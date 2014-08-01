.class public Lorg/kxml2/wap/WbxmlSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field private attrPage:I

.field attrStartTable:Ljava/util/Hashtable;

.field attrValueTable:Ljava/util/Hashtable;

.field attributes:Ljava/util/Vector;

.field buf:Ljava/io/ByteArrayOutputStream;

.field depth:I

.field private encoding:Ljava/lang/String;

.field name:Ljava/lang/String;

.field namespace:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field pending:Ljava/lang/String;

.field stringTable:Ljava/util/Hashtable;

.field stringTableBuf:Ljava/io/ByteArrayOutputStream;

.field private tagPage:I

.field tagTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v3, v0, [B

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v4, p1, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    shr-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_1

    :goto_1
    const/4 v0, 0x1

    if-le v2, v0, :cond_0

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, v3, v2

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    aget-byte v0, v3, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private writeStr(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x41

    const/16 v8, 0x20

    const/16 v7, 0x83

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v0, v3

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_6

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v9, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    sub-int v5, v1, v2

    const/16 v6, 0xa

    if-le v5, v6, :cond_2

    if-le v2, v0, :cond_3

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    :goto_3
    move v0, v1

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    if-le v2, v0, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    if-le v2, v0, :cond_5

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    :cond_5
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    if-ge v0, v4, :cond_7

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method private final writeStrT(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x20

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    if-eqz p2, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    :goto_1
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-le v1, v6, :cond_2

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    add-int v5, v0, v1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0, p1}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-static {v1, v0}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    goto :goto_1
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/kxml2/wap/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public checkPending(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    if-nez v0, :cond_4

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    :goto_2
    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_d

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    :goto_4
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_1
    const/16 v0, 0x44

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0x84

    goto :goto_1

    :cond_3
    const/16 v0, 0xc4

    goto :goto_1

    :cond_4
    aget v2, v0, v3

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagPage:I

    if-eq v2, v5, :cond_5

    aget v2, v0, v3

    iput v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagPage:I

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagPage:I

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_5
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_7

    if-eqz p1, :cond_6

    aget v0, v0, v7

    :goto_6
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_6
    aget v0, v0, v7

    or-int/lit8 v0, v0, 0x40

    goto :goto_6

    :cond_7
    if-eqz p1, :cond_8

    aget v0, v0, v7

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_8
    aget v0, v0, v7

    or-int/lit16 v0, v0, 0xc0

    goto :goto_6

    :cond_9
    aget v5, v0, v3

    iget v6, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    if-eq v5, v6, :cond_a

    aget v5, v0, v3

    iput v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v6, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_a
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v0, v0, v7

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_b
    aget v5, v0, v3

    iget v6, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    if-eq v5, v6, :cond_c

    aget v5, v0, v3

    iput v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v6, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_c
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v0, v0, v7

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    :cond_d
    if-lez v4, :cond_e

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot write docdecl for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    :goto_0
    iget v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EntityReference not supported for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PI NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v1

    const/4 v3, 0x1

    add-int/lit8 v4, v0, 0x5

    aput v4, v2, v3

    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    aget-object v4, p2, v0

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v1

    const/4 v3, 0x1

    add-int/lit16 v4, v0, 0x85

    aput v4, v2, v3

    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    aget-object v4, p2, v0

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "UTF-8"

    :cond_0
    iput-object p2, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    iput-object p1, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wbxml requires an OutputStream!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v1

    const/4 v3, 0x1

    add-int/lit8 v4, v0, 0x5

    aput v4, v2, v3

    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    aget-object v4, p2, v0

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NSP NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    iput-object p2, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    iget v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    invoke-direct {p0, p1}, Lorg/kxml2/wap/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    return-object p0
.end method

.method writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeWapExtension(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    check-cast p2, [B

    check-cast p2, [B

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    array-length v1, p2

    invoke-static {v0, v1}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    :sswitch_1
    return-void

    :sswitch_2
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_3
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_0
    .end sparse-switch
.end method
