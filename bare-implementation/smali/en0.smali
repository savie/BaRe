.class public final Len0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final n:Ljava/util/TimeZone;


# instance fields
.field public final a:Llc8;

.field public final b:Ljb9;

.field public final c:Lyg4;

.field public final d:Lmp7;

.field public final e:Ljava/text/DateFormat;

.field public final f:Ljava/util/Locale;

.field public final k:Lbl0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTC"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Len0;->n:Ljava/util/TimeZone;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lxo0;Lyg4;Llc8;Ljava/text/DateFormat;Ljava/util/Locale;Lbl0;Lmp7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Len0;->b:Ljb9;

    .line 5
    .line 6
    iput-object p2, p0, Len0;->c:Lyg4;

    .line 7
    .line 8
    iput-object p3, p0, Len0;->a:Llc8;

    .line 9
    .line 10
    iput-object p4, p0, Len0;->e:Ljava/text/DateFormat;

    .line 11
    .line 12
    iput-object p5, p0, Len0;->f:Ljava/util/Locale;

    .line 13
    .line 14
    iput-object p6, p0, Len0;->k:Lbl0;

    .line 15
    .line 16
    iput-object p7, p0, Len0;->d:Lmp7;

    .line 17
    .line 18
    return-void
.end method
