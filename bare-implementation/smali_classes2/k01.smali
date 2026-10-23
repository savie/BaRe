.class public final synthetic Lk01;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lm01;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

.field public final synthetic c:Ll01;


# direct methods
.method public synthetic constructor <init>(Lm01;Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;Ll01;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk01;->a:Lm01;

    .line 5
    .line 6
    iput-object p2, p0, Lk01;->b:Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 7
    .line 8
    iput-object p3, p0, Lk01;->c:Ll01;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iget-object v0, p0, Lk01;->a:Lm01;

    .line 6
    .line 7
    iget-object v1, p0, Lk01;->b:Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p2, p1}, Lgm7;->v(Ljl0;ZZ)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lk01;->c:Ll01;

    .line 13
    .line 14
    iget-object p0, p0, Ll01;->v:Lmi7;

    .line 15
    .line 16
    iget-object p0, p0, Lmi7;->d:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
