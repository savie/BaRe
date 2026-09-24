.class public final Lcx6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ld33;


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:Lrm7;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lrm7;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcx6;->b:Lrm7;

    .line 10
    .line 11
    iput-object p1, p0, Lcx6;->a:Ljava/security/MessageDigest;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lrm7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcx6;->b:Lrm7;

    .line 2
    .line 3
    return-object p0
.end method
