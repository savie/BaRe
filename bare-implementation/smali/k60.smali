.class public Lk60;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation runtime Ljk5;
    reference = "https://sts.amazonaws.com/doc/2011-06-15/"
.end annotation

.annotation runtime Lno6;
    name = "AssumeRoleResponse"
    strict = false
.end annotation


# instance fields
.field private a:Lw32;
    .annotation runtime Lat2;
        name = "Credentials"
    .end annotation

    .annotation runtime Lfy5;
        value = "AssumeRoleResult"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lw32;
    .locals 0

    .line 1
    iget-object p0, p0, Lk60;->a:Lw32;

    .line 2
    .line 3
    return-object p0
.end method
