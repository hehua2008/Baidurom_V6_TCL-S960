.class public Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;
.super Ljava/lang/Object;
.source "DefaultFormat.java"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/Format;
.implements Lorg/cybergarage/upnp/std/av/server/object/FormatObject;


# static fields
.field private static classes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mmtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private defile:Ljava/io/File;

.field private extName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->classes:Ljava/util/HashMap;

    .line 494
    invoke-static {}, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->initHashMap()V

    .line 495
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->defile:Ljava/io/File;

    .line 498
    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 501
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;-><init>()V

    .line 502
    if-eqz p1, :cond_0

    .line 503
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->defile:Ljava/io/File;

    .line 504
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    .line 505
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 506
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 507
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    .line 509
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method private static initHashMap()V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->classes:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "object.item.imageItem.photo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->classes:Ljava/util/HashMap;

    const-string v1, "audio"

    const-string v2, "object.item.audioItem.musicTrack"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->classes:Ljava/util/HashMap;

    const-string v1, "video"

    const-string v2, "object.item.videoItem.movie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ts"

    const-string v2, "video/transportstream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mkv"

    const-string v2, "video/matroska-mkv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "3gpp"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "3gp"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "3gpp2"

    const-string v2, "video/3gpp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "3g2"

    const-string v2, "video/3gpp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ai"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "aif"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "aifc"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "aiff"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "asc"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "atom"

    const-string v2, "application/atom+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "au"

    const-string v2, "audio/basic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "avi"

    const-string v2, "video/avi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "bcpio"

    const-string v2, "application/x-bcpio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "bin"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "bmp"

    const-string v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cdf"

    const-string v2, "application/x-netcdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cgm"

    const-string v2, "image/cgm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "class"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cpio"

    const-string v2, "application/x-cpio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cpt"

    const-string v2, "application/mac-compactpro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "csh"

    const-string v2, "application/x-csh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dcr"

    const-string v2, "application/x-director"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dif"

    const-string v2, "video/x-dv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dir"

    const-string v2, "application/x-director"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "djv"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "djvu"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dll"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dmg"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dms"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "doc"

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dtd"

    const-string v2, "application/xml-dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dv"

    const-string v2, "video/x-dv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dvi"

    const-string v2, "application/x-dvi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dxr"

    const-string v2, "application/x-director"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "eps"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "etx"

    const-string v2, "text/x-setext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "exe"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ez"

    const-string v2, "application/andrew-inset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "gram"

    const-string v2, "application/srgs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "grxml"

    const-string v2, "application/srgs+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "gtar"

    const-string v2, "application/x-gtar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "hdf"

    const-string v2, "application/x-hdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "hqx"

    const-string v2, "application/mac-binhex40"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "htm"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ice"

    const-string v2, "x-conference/x-cooltalk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ico"

    const-string v2, "image/x-icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ics"

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ief"

    const-string v2, "image/ief"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ifb"

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "iges"

    const-string v2, "model/iges"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "igs"

    const-string v2, "model/iges"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "jnlp"

    const-string v2, "application/x-java-jnlp-file"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "jp2"

    const-string v2, "image/jp2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "jpe"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "jpeg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "js"

    const-string v2, "application/x-javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "kar"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "latex"

    const-string v2, "application/x-latex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lha"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lzh"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m3u"

    const-string v2, "audio/x-mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m4a"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m4b"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m4p"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m4u"

    const-string v2, "video/vnd.mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m4v"

    const-string v2, "video/x-m4v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mac"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "man"

    const-string v2, "application/x-troff-man"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mathml"

    const-string v2, "application/mathml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "me"

    const-string v2, "application/x-troff-me"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mesh"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mid"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wma"

    const-string v2, "audio/wma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "midi"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mif"

    const-string v2, "application/vnd.mif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "movie"

    const-string v2, "video/x-sgi-movie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mp2"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mpe"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mpeg"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mpg"

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mpga"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ms"

    const-string v2, "application/x-troff-ms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "msh"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mxu"

    const-string v2, "video/vnd.mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "nc"

    const-string v2, "application/x-netcdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "oda"

    const-string v2, "application/oda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ogg"

    const-string v2, "application/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pbm"

    const-string v2, "image/x-portable-bitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pct"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pdb"

    const-string v2, "chemical/x-pdb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pdf"

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pgm"

    const-string v2, "image/x-portable-graymap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pgn"

    const-string v2, "application/x-chess-pgn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pic"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pict"

    const-string v2, "image/pict"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pnm"

    const-string v2, "image/x-portable-anymap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pnt"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pntg"

    const-string v2, "image/x-macpaint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ppm"

    const-string v2, "image/x-portable-pixmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ps"

    const-string v2, "application/postscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "qt"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "qti"

    const-string v2, "image/x-quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "qtif"

    const-string v2, "image/x-quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ra"

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ram"

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ras"

    const-string v2, "image/x-cmu-raster"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rdf"

    const-string v2, "application/rdf+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rgb"

    const-string v2, "image/x-rgb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rm"

    const-string v2, "application/vnd.rn-realmedia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "roff"

    const-string v2, "application/x-troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rtf"

    const-string v2, "text/rtf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rtx"

    const-string v2, "text/richtext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sgm"

    const-string v2, "text/sgml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sgml"

    const-string v2, "text/sgml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sh"

    const-string v2, "application/x-sh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "shar"

    const-string v2, "application/x-shar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "silo"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sit"

    const-string v2, "application/x-stuffit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "skd"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "skm"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "skp"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "skt"

    const-string v2, "application/x-koan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "smi"

    const-string v2, "application/smil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "smil"

    const-string v2, "application/smil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "snd"

    const-string v2, "audio/basic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "so"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "spl"

    const-string v2, "application/x-futuresplash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "src"

    const-string v2, "application/x-wais-source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sv4cpio"

    const-string v2, "application/x-sv4cpio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sv4crc"

    const-string v2, "application/x-sv4crc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "svg"

    const-string v2, "image/svg+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "swf"

    const-string v2, "application/x-shockwave-flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "t"

    const-string v2, "application/x-troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tar"

    const-string v2, "application/x-tar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tcl"

    const-string v2, "application/x-tcl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tex"

    const-string v2, "application/x-tex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "texi"

    const-string v2, "application/x-texinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "texinfo"

    const-string v2, "application/x-texinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tif"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tiff"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tr"

    const-string v2, "application/x-troff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tsv"

    const-string v2, "text/tab-separated-values"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ustar"

    const-string v2, "application/x-ustar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vcd"

    const-string v2, "application/x-cdlink"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vrml"

    const-string v2, "model/vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vxml"

    const-string v2, "application/voicexml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wav"

    const-string v2, "audio/L16;rate=44100;channels=2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wbmxl"

    const-string v2, "application/vnd.wap.wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wml"

    const-string v2, "text/vnd.wap.wml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wmlc"

    const-string v2, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wmls"

    const-string v2, "text/vnd.wap.wmlscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wmlsc"

    const-string v2, "application/vnd.wap.wmlscriptc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wrl"

    const-string v2, "model/vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xbm"

    const-string v2, "image/x-xbitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xht"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xml"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xpm"

    const-string v2, "image/x-xpixmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xsl"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xslt"

    const-string v2, "application/xslt+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xul"

    const-string v2, "application/vnd.mozilla.xul+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xyz"

    const-string v2, "chemical/x-xyz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "zip"

    const-string v2, "application/zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "aab"

    const-string v2, "application/x-authoware-bin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "aam"

    const-string v2, "application/x-authoware-map"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "aas"

    const-string v2, "application/x-authoware-seg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "als"

    const-string v2, "audio/X-Alpha5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "amc"

    const-string v2, "application/x-mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ani"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "asd"

    const-string v2, "application/astound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "asf"

    const-string v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "asn"

    const-string v2, "application/astound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "asp"

    const-string v2, "application/x-asap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "asx"

    const-string v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "avb"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "awb"

    const-string v2, "audio/amr-wb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "bld"

    const-string v2, "application/bld"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "bld2"

    const-string v2, "application/bld2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "bpk"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "bz2"

    const-string v2, "application/x-bzip2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cal"

    const-string v2, "image/x-cals"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ccn"

    const-string v2, "application/x-cnc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cco"

    const-string v2, "application/x-cocoa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cdf"

    const-string v2, "application/x-netcdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cgi"

    const-string v2, "magnus-internal/cgi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "chat"

    const-string v2, "application/x-chat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "clp"

    const-string v2, "application/x-msclip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cmx"

    const-string v2, "application/x-cmx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "co"

    const-string v2, "application/x-cult3d-object"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cod"

    const-string v2, "image/cis-cod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "crd"

    const-string v2, "application/x-mscardfile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "csm"

    const-string v2, "chemical/x-csml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "csml"

    const-string v2, "chemical/x-csml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "cur"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dcm"

    const-string v2, "x-lml/x-evm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dcx"

    const-string v2, "image/x-dcx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dhtml"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dot"

    const-string v2, "application/x-dot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dwf"

    const-string v2, "drawing/x-dwf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dwg"

    const-string v2, "application/x-autocad"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "dxf"

    const-string v2, "application/x-autocad"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ebk"

    const-string v2, "application/x-expandedbook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "emb"

    const-string v2, "chemical/x-embl-dl-nucleotide"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "embl"

    const-string v2, "chemical/x-embl-dl-nucleotide"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "eri"

    const-string v2, "image/x-eri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "es"

    const-string v2, "audio/echospeech"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "esl"

    const-string v2, "audio/echospeech"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "etc"

    const-string v2, "application/x-earthtime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "evm"

    const-string v2, "x-lml/x-evm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "evy"

    const-string v2, "application/x-envoy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "fh4"

    const-string v2, "image/x-freehand"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "fh5"

    const-string v2, "image/x-freehand"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "fhc"

    const-string v2, "image/x-freehand"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "fif"

    const-string v2, "image/fif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "fm"

    const-string v2, "application/x-maker"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "fpx"

    const-string v2, "image/x-fpx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "fvi"

    const-string v2, "video/isivideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "gau"

    const-string v2, "chemical/x-gaussian-input"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "gca"

    const-string v2, "application/x-gca-compressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "gdb"

    const-string v2, "x-lml/x-gdb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "gps"

    const-string v2, "application/x-gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "gz"

    const-string v2, "application/x-gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "hdm"

    const-string v2, "text/x-hdml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "hdml"

    const-string v2, "text/x-hdml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "hlp"

    const-string v2, "application/winhlp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "hts"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ifm"

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ifs"

    const-string v2, "image/ifs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "imy"

    const-string v2, "audio/melody"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ins"

    const-string v2, "application/x-NET-Install"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ipx"

    const-string v2, "application/x-ipix"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "it"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "itz"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ivr"

    const-string v2, "i-world/i-vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "j2k"

    const-string v2, "image/j2k"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "jam"

    const-string v2, "application/x-jam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "jar"

    const-string v2, "application/java-archive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "jpz"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "jwc"

    const-string v2, "application/jwc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "kjx"

    const-string v2, "application/x-kjx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lak"

    const-string v2, "x-lml/x-lak"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lcc"

    const-string v2, "application/fastman"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lcl"

    const-string v2, "application/x-digitalloca"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lcr"

    const-string v2, "application/x-digitalloca"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lgh"

    const-string v2, "application/lgh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lml"

    const-string v2, "x-lml/x-lml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lmlpack"

    const-string v2, "x-lml/x-lmlpack"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lsf"

    const-string v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "lsx"

    const-string v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m13"

    const-string v2, "application/x-msmediaview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m14"

    const-string v2, "application/x-msmediaview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m15"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "m3url"

    const-string v2, "audio/x-mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ma1"

    const-string v2, "audio/ma1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ma2"

    const-string v2, "audio/ma2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ma3"

    const-string v2, "audio/ma3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ma5"

    const-string v2, "audio/ma5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "map"

    const-string v2, "magnus-internal/imagemap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mbd"

    const-string v2, "application/mbedlet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mct"

    const-string v2, "application/x-mascot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mdb"

    const-string v2, "application/x-msaccess"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mdz"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mel"

    const-string v2, "text/x-vmel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mi"

    const-string v2, "application/x-mif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mil"

    const-string v2, "image/x-cals"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mio"

    const-string v2, "audio/x-mio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mmf"

    const-string v2, "application/x-skt-lbs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mng"

    const-string v2, "video/x-mng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mny"

    const-string v2, "application/x-msmoney"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "moc"

    const-string v2, "application/x-mocha"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mocha"

    const-string v2, "application/x-mocha"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mod"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mof"

    const-string v2, "application/x-yumekara"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mol"

    const-string v2, "chemical/x-mdl-molfile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mop"

    const-string v2, "chemical/x-mopac-input"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mpc"

    const-string v2, "application/vnd.mpohun.certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mpg4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mpga"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mpn"

    const-string v2, "application/vnd.mophun.application"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mpp"

    const-string v2, "application/vnd.ms-project"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mps"

    const-string v2, "application/x-mapserver"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mrl"

    const-string v2, "text/x-mrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mrm"

    const-string v2, "application/x-mrm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mts"

    const-string v2, "application/metastream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mtx"

    const-string v2, "application/metastream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mtz"

    const-string v2, "application/metastream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "mzv"

    const-string v2, "application/metastream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "nar"

    const-string v2, "application/zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "nbmp"

    const-string v2, "image/nbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ndb"

    const-string v2, "x-lml/x-ndb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ndwn"

    const-string v2, "application/ndwn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "nif"

    const-string v2, "application/x-nif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "nmz"

    const-string v2, "application/x-scream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "nokia-op-logo"

    const-string v2, "image/vnd.nok-oplogo-color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "npx"

    const-string v2, "application/x-netfpx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "nsnd"

    const-string v2, "audio/nsnd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "nva"

    const-string v2, "application/x-neva1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "oom"

    const-string v2, "application/x-AtlasMate-Plugin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pac"

    const-string v2, "audio/x-pac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pae"

    const-string v2, "audio/x-epac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pan"

    const-string v2, "application/x-pan"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pcx"

    const-string v2, "image/x-pcx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pda"

    const-string v2, "image/x-pda"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pfr"

    const-string v2, "application/font-tdpfr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pm"

    const-string v2, "application/x-perl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pmd"

    const-string v2, "application/x-pmd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pnz"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pot"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pps"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pqf"

    const-string v2, "application/x-cprplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pqi"

    const-string v2, "application/cprplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "prc"

    const-string v2, "application/x-prc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "proxy"

    const-string v2, "application/x-ns-proxy-autoconfig"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ptlk"

    const-string v2, "application/listenup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pub"

    const-string v2, "application/x-mspublisher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "pvx"

    const-string v2, "video/x-pv-pvx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "qcp"

    const-string v2, "audio/vnd.qcelp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "r3t"

    const-string v2, "text/vnd.rn-realtext3d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rar"

    const-string v2, "application/x-rar-compressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rf"

    const-string v2, "image/vnd.rn-realflash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rlf"

    const-string v2, "application/x-richlink"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rmf"

    const-string v2, "audio/x-rmf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rmm"

    const-string v2, "video/vnd.rn-realvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rmvb"

    const-string v2, "video/vnd.rn-realvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rnx"

    const-string v2, "application/vnd.rn-realplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rp"

    const-string v2, "image/vnd.rn-realpix"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rpm"

    const-string v2, "audio/x-pn-realaudio-plugin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rt"

    const-string v2, "text/vnd.rn-realtext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rte"

    const-string v2, "x-lml/x-gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rtg"

    const-string v2, "application/metastream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rv"

    const-string v2, "video/vnd.rn-realvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "rwc"

    const-string v2, "application/x-rogerwilco"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "s3m"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "s3z"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sca"

    const-string v2, "application/x-supercard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "scd"

    const-string v2, "application/x-msschedule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sdf"

    const-string v2, "application/e-score"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sea"

    const-string v2, "application/x-stuffit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "shtml"

    const-string v2, "magnus-internal/parsed-html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "shw"

    const-string v2, "application/presentations"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "si6"

    const-string v2, "image/si6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "si7"

    const-string v2, "image/vnd.stiwap.sis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "si9"

    const-string v2, "image/vnd.lgtwap.sis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sis"

    const-string v2, "application/vnd.symbian.install"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "slc"

    const-string v2, "application/x-salsa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "smd"

    const-string v2, "audio/x-smd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "smp"

    const-string v2, "application/studiom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "smz"

    const-string v2, "audio/x-smd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "spc"

    const-string v2, "text/x-speech"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "spr"

    const-string v2, "application/x-sprite"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "sprite"

    const-string v2, "application/x-sprite"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "spt"

    const-string v2, "application/x-spt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "stk"

    const-string v2, "application/hyperstudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "stm"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "svf"

    const-string v2, "image/vnd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "svh"

    const-string v2, "image/svh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "svr"

    const-string v2, "x-world/x-svr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "swfl"

    const-string v2, "application/x-shockwave-flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tad"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "talk"

    const-string v2, "text/x-speech"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "taz"

    const-string v2, "application/x-tar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tbp"

    const-string v2, "application/x-timbuktu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tbt"

    const-string v2, "application/x-timbuktu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tgz"

    const-string v2, "application/x-tar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "thm"

    const-string v2, "application/vnd.eri.thm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tki"

    const-string v2, "application/x-tkined"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tkined"

    const-string v2, "application/x-tkined"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "toc"

    const-string v2, "application/toc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "toy"

    const-string v2, "image/toy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "trk"

    const-string v2, "x-lml/x-gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "trm"

    const-string v2, "application/x-msterminal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tsi"

    const-string v2, "audio/tsplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "tsp"

    const-string v2, "application/dsptype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ttf"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ttz"

    const-string v2, "application/t-time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "ult"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "uu"

    const-string v2, "application/x-uuencode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "uue"

    const-string v2, "application/x-uuencode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vcf"

    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vdo"

    const-string v2, "video/vdo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vib"

    const-string v2, "audio/vib"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "viv"

    const-string v2, "video/vivo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vivo"

    const-string v2, "video/vivo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vmd"

    const-string v2, "application/vocaltec-media-desc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vmf"

    const-string v2, "application/vocaltec-media-file"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vmi"

    const-string v2, "application/x-dreamcast-vms-info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vms"

    const-string v2, "application/x-dreamcast-vms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vox"

    const-string v2, "audio/voxware"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vqe"

    const-string v2, "audio/x-twinvq-plugin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vqf"

    const-string v2, "audio/x-twinvq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vql"

    const-string v2, "audio/x-twinvq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vre"

    const-string v2, "x-world/x-vream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vrt"

    const-string v2, "x-world/x-vrt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vrw"

    const-string v2, "x-world/x-vream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "vts"

    const-string v2, "workbook/formulaone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wax"

    const-string v2, "audio/x-ms-wax"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "web"

    const-string v2, "application/vnd.xara"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wi"

    const-string v2, "image/wavelet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wis"

    const-string v2, "application/x-InstallShield"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wm"

    const-string v2, "video/x-ms-wm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wma"

    const-string v2, "audio/x-ms-wma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wmd"

    const-string v2, "application/x-ms-wmd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wmf"

    const-string v2, "application/x-msmetafile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wmx"

    const-string v2, "video/x-ms-wmx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wmz"

    const-string v2, "application/x-ms-wmz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wpng"

    const-string v2, "image/x-up-wpng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wpt"

    const-string v2, "x-lml/x-gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wri"

    const-string v2, "application/x-mswrite"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wrz"

    const-string v2, "x-world/x-vrml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wv"

    const-string v2, "video/wavelet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wvx"

    const-string v2, "video/x-ms-wvx"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "wxl"

    const-string v2, "application/x-wxl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "x-gzip"

    const-string v2, "application/x-gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xar"

    const-string v2, "application/vnd.xara"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xdm"

    const-string v2, "application/x-xdma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xdma"

    const-string v2, " application/x-xdma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xdw"

    const-string v2, "application/vnd.fujixerox.docuworks"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xhtm"

    const-string v2, " application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xla"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xlc"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xll"

    const-string v2, "application/x-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xlm"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xlt"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xlw"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xm"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xmz"

    const-string v2, "audio/x-mod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xpi"

    const-string v2, "application/x-xpinstall"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "xsit"

    const-string v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "yz1"

    const-string v2, "application/x-yz1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "z"

    const-string v2, "application/x-compress"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    const-string v1, "zac"

    const-string v2, "application/x-zaurus-zac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-void
.end method


# virtual methods
.method public createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    .locals 1
    .parameter "file"

    .prologue
    .line 527
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized equals(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    .line 516
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 517
    :try_start_0
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->defile:Ljava/io/File;

    .line 518
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    .line 519
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 520
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 521
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    .end local v0           #index:I
    :cond_0
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 516
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAttributeList()Lorg/cybergarage/xml/AttributeList;
    .locals 1

    .prologue
    .line 555
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    const-string v0, ""

    return-object v0
.end method

.method public getMediaClass()Ljava/lang/String;
    .locals 7

    .prologue
    .line 538
    sget-object v5, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    iget-object v6, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 539
    .local v3, mt:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 540
    const-string v1, ""

    .line 543
    .local v1, clazz:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, px:Ljava/lang/String;
    sget-object v5, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->classes:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v4           #px:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 551
    .end local v1           #clazz:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 545
    .restart local v1       #clazz:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 546
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMediaClass ext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    .end local v1           #clazz:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "object.item"

    goto :goto_1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 531
    sget-object v1, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->mmtypes:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;->extName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 532
    .local v0, mt:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 534
    .end local v0           #mt:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #mt:Ljava/lang/String;
    :cond_0
    const-string v0, "*/*"

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    const-string v0, ""

    return-object v0
.end method
