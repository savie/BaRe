.class public final Ldn9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lxe9;


# static fields
.field public static final b:Ldn9;


# instance fields
.field public final a:Lxe9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldn9;

    .line 2
    .line 3
    invoke-direct {v0}, Ldn9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldn9;->b:Ldn9;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lgn9;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcf9;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcf9;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lms8;->T(Lxe9;)Lxe9;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ldn9;->a:Lxe9;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ldn9;->a:Lxe9;

    .line 2
    .line 3
    invoke-interface {p0}, Lxe9;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgn9;

    .line 8
    .line 9
    return-object p0
.end method
