.class public final Lpa3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lf77;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lra3;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpa3;->a:Ljava/io/File;

    .line 5
    .line 6
    sget-object p1, Lra3;->a:Lra3;

    .line 7
    .line 8
    iput-object p1, p0, Lpa3;->b:Lra3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lna3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lna3;-><init>(Lpa3;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
