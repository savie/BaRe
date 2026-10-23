.class public final Lkf8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lkf8;

.field public static final c:Lkf8;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkf8;

    .line 2
    .line 3
    const-string v1, "encryption"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkf8;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkf8;->b:Lkf8;

    .line 9
    .line 10
    new-instance v0, Lkf8;

    .line 11
    .line 12
    const-string v1, "compression method"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lkf8;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lkf8;->c:Lkf8;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkf8;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkf8;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
