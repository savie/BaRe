.class public final Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic L:I


# instance fields
.field public final K:Ll90;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lms;

    .line 5
    .line 6
    const/16 v1, 0xf

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lms;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Lvt5;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lns;

    .line 20
    .line 21
    const/16 v4, 0x10

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lns;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lz20;

    .line 27
    .line 28
    const/16 v5, 0xe

    .line 29
    .line 30
    invoke-direct {v4, p0, v5}, Lz20;-><init>(Lil0;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->K:Ll90;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->N()Lvt5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lvt5;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvt5;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->N()Lvt5;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lvt5;->f:Lix6;

    .line 9
    .line 10
    new-instance v0, Lc7;

    .line 11
    .line 12
    const/16 v1, 0x18

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ly20;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->N()Lvt5;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lvt5;->g:Lix6;

    .line 31
    .line 32
    new-instance v0, Ld7;

    .line 33
    .line 34
    const/16 v1, 0x14

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Ly20;

    .line 40
    .line 41
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->N()Lvt5;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lvt5;->h:Lix6;

    .line 52
    .line 53
    new-instance v0, Le7;

    .line 54
    .line 55
    const/16 v1, 0x15

    .line 56
    .line 57
    invoke-direct {v0, p0, v1}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ly20;

    .line 61
    .line 62
    invoke-direct {v1, v2, v0}, Ly20;-><init>(ILmt3;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
