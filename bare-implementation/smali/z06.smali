.class public final synthetic Lz06;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcn6;

.field public final synthetic b:Lvh7;


# direct methods
.method public synthetic constructor <init>(Lcn6;Lvh7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz06;->a:Lcn6;

    .line 5
    .line 6
    iput-object p2, p0, Lz06;->b:Lvh7;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lz06;->a:Lcn6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn6;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lw16;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lw16;->f:Ll15;

    .line 13
    .line 14
    const-string v2, "Deleting certificate in slot {}"

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    iget-object p0, p0, Lz06;->b:Lvh7;

    .line 18
    .line 19
    invoke-static {v3, v1, v2, p0}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lvh7;->b:I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1, p0}, Lw16;->m([BI)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    return-object p0
.end method
