.class Lcom/android/settings_ex/users/UserSettings$13;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/UserSettings;->addUserNow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserSettings;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/UserSettings;
    .param p2, "val$userType"    # I

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    iput p2, p0, Lcom/android/settings_ex/users/UserSettings$13;->val$userType:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 658
    iget v1, p0, Lcom/android/settings_ex/users/UserSettings$13;->val$userType:I

    if-ne v1, v4, :cond_0

    .line 659
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->-wrap1(Lcom/android/settings_ex/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 663
    .local v0, "user":Landroid/content/pm/UserInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->-get4(Lcom/android/settings_ex/users/UserSettings;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 664
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/settings_ex/users/UserSettings;->-set0(Lcom/android/settings_ex/users/UserSettings;Z)Z

    .line 665
    iget v1, p0, Lcom/android/settings_ex/users/UserSettings$13;->val$userType:I

    if-ne v1, v4, :cond_1

    .line 666
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->-get1(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 667
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->-get1(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings_ex/users/UserSettings;->-get1(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    .line 668
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget v5, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v6, 0x2

    .line 667
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    .line 655
    return-void

    .line 661
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->-wrap0(Lcom/android/settings_ex/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .restart local v0    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 670
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->-get1(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/users/UserSettings$13;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings_ex/users/UserSettings;->-get1(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    .line 671
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    iget v5, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v6, 0x3

    .line 670
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 663
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method