import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/AreasController.dart';




class AreasAndBlocksScreen extends StatelessWidget {
  final AreasController areasController = Get.put(AreasController());
  final BlocksController blocksController = Get.put(BlocksController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Areas and Blocks'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.builder(
                  itemCount: areasController.areas.length,
                  itemBuilder: (context, index) {
                    final area = areasController.areas[index];
                    return ListTile(
                      title: Text(area.name),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => areasController.deleteArea(area),
                      ),
                    );
                  },
                )),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: areasController.nameController,
                  decoration: InputDecoration(hintText: 'Enter area name'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => areasController.addArea(),
              ),
            ],
          ),
          Expanded(
            child: Obx(() => ListView.builder(
                  itemCount: blocksController.blocks.length,
                  itemBuilder: (context, index) {
                    final block = blocksController.blocks[index];
                    return ListTile(
                      title: Text(block.name),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => blocksController.deleteBlock(block),
                      ),
                    );
                  },
                )),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: blocksController.nameController,
                  decoration: InputDecoration(hintText: 'Enter block name'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => blocksController.addBlock(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}